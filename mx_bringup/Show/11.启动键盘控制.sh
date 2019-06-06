#!/usr/bin/env bash
source /home/intel/ros_voice_system/devel/setup.bash;
gnome-terminal -t "启动键盘控制" -x bash -c "roslaunch mx_bringup rbc_teleop_keyboard.launch  ;exec bash;"
