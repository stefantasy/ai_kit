#!/bin/bash
source /home/intel/ros_voice_system/devel/setup.bash;

gnome-terminal -t "启动微信控制" -x bash -c "roslaunch mx_test wechat_ctrl.launch;exec bash;"

