#!/bin/bash
sudo apt-get install avrdude
avrdude /opt/arduino-1.8.5/hardware/tools/avr/bin/avrdude -C/opt/arduino-1.8.5/hardware/tools/avr/etc/avrdude.conf -v -patmega328p -carduino -P/dev/arduino -b57600 -D -Uflash:w:`pwd`/aikit_new.hex:i

