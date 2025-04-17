FROM osrf/ros:humble-desktop-full

LABEL org.opencontainers.image.authors="mac931029@gmail.com"
LABEL shell=bash

ARG USERNAME=user
ARG USER_UID=1000
ARG USER_GID=$USER_UID

SHELL ["/bin/bash", "-c"]

RUN groupadd --gid $USER_GID $USERNAME && \
    useradd --uid $USER_UID --gid $USER_GID -m $USERNAME -s /bin/bash && \
    apt-get update && \
    apt-get install -y sudo && \
    echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME && \
    chmod 0440 /etc/sudoers.d/$USERNAME && \
    rm -rf /var/lib/apt/lists/*

RUN apt-get update \
    && apt-get install -y \
    sudo \
    curl \
    git \
    git-extras \
    htop \
    tree \
    net-tools \
    tmux \
    vim \
    wget \
    usbutils \
    bash-completion \
    libreoffice \
    python3-pip \
    python3-rosdep \
    python3-setuptools \
    python3-numpy \

    # ros2
    ros-humble-ament-cmake \
    ros-humble-rqt-plot\
    ros-humble-rqt-tf-tree\
    ros-humble-nav2-msgs && \
    rm -rf /var/lib/apt/lists/*

USER $USERNAME

RUN mkdir -p /home/user/Eurobot-excel/src

WORKDIR /home/$USERNAME/Eurobot-excel
    
RUN sudo apt-get update && \
    rosdep update && \
    rosdep install -y -r -q --from-paths src --ignore-src --rosdistro $ROS_DISTRO && \
    /bin/bash -c 'source /opt/ros/$ROS_DISTRO/setup.bash; colcon build --symlink-install' \
    && sudo rm -rf /var/lib/apt/lists/*

ENV SHELL /bin/bash
ENV TERM=xterm-256color


CMD ["/bin/bash", "-ic"]