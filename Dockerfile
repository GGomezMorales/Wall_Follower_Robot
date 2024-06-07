FROM ros:humble-ros-base-jammy

# install ros2 packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-humble-desktop=0.10.0-1* \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /wall_follower_ws/src

RUN echo "source /opt/ros/humble/setup.bash" >> ~/.bashrc
