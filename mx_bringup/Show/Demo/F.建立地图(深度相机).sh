#!/bin/bash
killall gnome-terminal-server 
source /home/intel/ros_voice_system/devel/setup.bash;

gnome-terminal -t "播报服务" -x bash -c "roslaunch mx_bringup mx_soundplay.launch ;exec bash;"

sleep 1.0

echo G Maping Mode|rosrun sound_play say.py

gnome-terminal -t "启动rbcBot机器人" -x bash -c "roslaunch mx_bringup rbc_camera_start.launch ;exec bash;"

sleep 2.5
gnome-terminal -t "启动Gmapping建图" -x bash -c "roslaunch mx_nav gmapping_demo.launch ;exec bash;"

sleep 1
gnome-terminal -t "启动建图RVIZ" -x bash -c "roslaunch mx_rviz gmapping_view.launch ;exec bash;"

sleep 3
gnome-terminal -t "启动键盘控制" -x bash -c "roslaunch mx_bringup rbc_teleop_keyboard.launch  ;exec bash;"

