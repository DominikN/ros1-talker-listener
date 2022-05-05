cmake_minimum_required(VERSION 3.0.2)
project(roscpp_tutorials)

find_package(catkin REQUIRED roscpp)

catkin_package(
)

include_directories(
${catkin_INCLUDE_DIRS}
)

add_executable(listener listener/listener.cpp)
add_executable(talker talker/talker.cpp)

target_link_libraries(listener ${catkin_LIBRARIES})
target_link_libraries(talker ${catkin_LIBRARIES})