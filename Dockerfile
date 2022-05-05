
FROM ros:noetic

SHELL ["/bin/bash", "-c"]

WORKDIR /ros_ws

COPY . .
COPY ros_entrypoint.sh /

RUN source /opt/ros/$ROS_DISTRO/setup.bash && \
    cd src && catkin_init_workspace && cd .. && \
    catkin_make

# RUN apt-get update && apt install -y \
#         ros-noetic-ros-tutorials && \
#     rm -rf /var/lib/apt/lists/*
