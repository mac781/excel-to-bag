#include "rclcpp/rclcpp.hpp"
#include "nav_msgs/msg/odometry.hpp"
#include "rosbag2_cpp/writer.hpp"
#include "rclcpp/serialization.hpp"
#include "rclcpp/serialized_message.hpp"
#include "csv.hpp"
#include <iostream>
#include <fstream>
#include <sstream>

using namespace csv;

class CsvToBag : public rclcpp::Node {
public:
    CsvToBag() : Node("csv_to_bag") {

        writer_ = std::make_shared<rosbag2_cpp::Writer>();
        writer_->open("/home/user/excel-to-bag/src/csv_to_bag/bag/test3_bag");

        read_and_publish();
    }

private:
    void read_and_publish() {

        CSVReader csv_reader("/home/user/excel-to-bag/src/csv_to_bag/data/test3.csv");
        CSVRow row;

        rclcpp::Serialization<nav_msgs::msg::Odometry> serializer;
        rclcpp::SerializedMessage serialized_msg;

        int count = 0;
        double x[101], y[101], z[101], t[101];

        rival_msgs_.header.frame_id = "map";

        for (auto& row: csv_reader) {
            
            x[count] = row["x"].get<double>();
            y[count] = row["y"].get<double>();
            z[count] = row["z"].get<double>();
            t[count] = row["timestamp"].get<double>();
            
            RCLCPP_INFO(this->get_logger(),"raw:(%.2f, %.2f, %.2f, %.2f)",t[count], x[count], y[count], z[count]);

            count++;
        }

        double start_x, start_y, end_x, end_y;
        int step = 0, interval = 0;
        bool flag = 0;

        for (int i = 0; i < count; i++) {
            
            // stop
            if (i > 0 && !flag && z[i] == -2){

                x[i] = x[i-1];
                y[i] = y[i-1];
            }
            //give up
            if (i > 0 && !flag && z[i] == -3){

                x[i] = -1;
                y[i] = -1;
            }
            // start to move
            else if (z[i] == -1 || z[i] == -2){

                if (!flag){
                    start_x = x[i-1];
                    start_y = y[i-1];
                    flag = 1;
                }

                if(z[i] == -1)
                    step++;

                interval++;

                if(i == 100){

                    for(int j=100; j > 100-interval; j--){

                        x[j] = 0;
                        y[j] = 0;
                    }
                }
            }
            // end moving
            else if (z[i] != -1 && flag == 1){

                end_x = x[i];
                end_y = y[i];

                for (int j = 0, k = 0; j < interval; j++) {

                    // stop or give up
                    if(z[i-interval+j] <= -2){

                        x[i-interval+j] = x[i-interval+j-1];
                        y[i-interval+j] = y[i-interval+j-1];
                    }
                    // move
                    else{
                        k++;
                        x[i-interval+j] = start_x + k * (end_x - start_x)/step;
                        y[i-interval+j] = start_y + k * (end_y - start_y)/step;
                    }
                }

                interval = 0;
                step = 0;
                flag = 0;
            }
        }
        for (int i = 0; i < count; i++) {

            rival_msgs_.pose.pose.position.x = x[i];
            rival_msgs_.pose.pose.position.y = y[i];
            rival_msgs_.pose.pose.position.z = 0;
            rival_msgs_.header.stamp.sec = t[i];
            rclcpp::Time ros_time(static_cast<int64_t>(rival_msgs_.header.stamp.sec * 1e9));

            serializer.serialize_message(&rival_msgs_, &serialized_msg);

            RCLCPP_INFO(this->get_logger(),"Writing:(%d, %.2f, %.2f, %.2f)",rival_msgs_.header.stamp.sec, rival_msgs_.pose.pose.position.x, rival_msgs_.pose.pose.position.y, rival_msgs_.pose.pose.position.z);

            // topic name: /rival/pose
            writer_->write(serialized_msg, "/rival/pose", "nav_msgs/msg/Odometry", ros_time);
        }

        writer_->close();
    }

    std::shared_ptr<rosbag2_cpp::Writer> writer_;
    nav_msgs::msg::Odometry rival_msgs_;
};

int main(int argc, char **argv) {

    rclcpp::init(argc, argv);
    rclcpp::spin(std::make_shared<CsvToBag>());
    rclcpp::shutdown();

    return 0;
}
