cmake_minimum_required(VERSION 3.8)
project(csv_to_bag)

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

# find dependencies
find_package(ament_cmake REQUIRED)
find_package(rclcpp REQUIRED)
find_package(geometry_msgs REQUIRED)
find_package(nav_msgs REQUIRED)
find_package(rosbag2_cpp REQUIRED)

include_directories(
  ~/Eurobot-excel/src/csv-parser/single_include
  ${catkin_INCLUDE_DIRS}
)

add_executable(csv_to_bag src/csv_to_bag.cpp)
ament_target_dependencies(csv_to_bag rclcpp geometry_msgs nav_msgs rosbag2_cpp)

install(TARGETS 
        csv_to_bag 
        DESTINATION lib/${PROJECT_NAME})

if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  # the following line skips the linter which checks for copyrights
  # comment the line when a copyright and license is added to all source files
  set(ament_cmake_copyright_FOUND TRUE)
  # the following line skips cpplint (only works in a git repo)
  # comment the line when this package is in a git repo and when
  # a copyright and license is added to all source files
  set(ament_cmake_cpplint_FOUND TRUE)
  ament_lint_auto_find_test_dependencies()
endif()

ament_package()
