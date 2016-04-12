#!/bin/bash
sudo cp ros-latest.list /etc/apt/sources.list.d/
sudo apt-key add ros.key
sudo apt-get update

sudo apt-get install ros-indigo-desktop-full
sudo apt-get install ros-indigo-turtlesim
sudo rosdep init

rosdep update
source /opt/ros/indigo/setup.bash 
echo "source /opt/ros/indigo/setup.bash" >> ~/.bashrc 

