#!/bin/bash

#Get all commands
# uvcdynctrl -c -d video0

turn_step=100


echo "########### Controls ###########"
echo " "
echo " Use WASD to controll camera "
echo " "
echo " CTRL+C to exit"
echo " "
echo "###############################"
echo " "

while true 
do
  read -rsn1 input
    if [ "$input" = "w" ]; then
#      echo "up"
      uvcdynctrl -s "Tilt, Relative" -- -$turn_step > /dev/null 2>&1
    elif [ "$input" = "a" ]; then
#      echo "left"
      uvcdynctrl -s "Pan, Relative" -- -$turn_step > /dev/null 2>&1
    elif [ "$input" = "s" ]; then
#      echo "down"
      uvcdynctrl -s "Tilt, Relative" -- $turn_step > /dev/null 2>&1
    elif [ "$input" = "d" ]; then
#      echo "right"
      uvcdynctrl -s "Pan, Relative" -- $turn_step > /dev/null 2>&1
    fi
done
