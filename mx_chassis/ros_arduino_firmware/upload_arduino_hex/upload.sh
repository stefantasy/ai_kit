#!/bin/bash
sudo apt-get install avrdude
avrdude /opt/arduino-1.8.5/hardware/tools/avr/bin/avrdude -C/opt/arduino-1.8.5/hardware/tools/avr/etc/avrdude.conf -v -patmega328p -carduino -P/dev/arduino -b57600 -D -Uflash:w:/home/intel/mxBot_ws/src/mx_turtleBot/mx_chassis/ros_arduino_firmware/upload_arduino_hex/aikit_new.hex:i

