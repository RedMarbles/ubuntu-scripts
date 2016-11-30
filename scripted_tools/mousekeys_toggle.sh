#!/bin/bash

# http://ubuntuforums.org/showthread.php?t=1942984

# I needed this when I connected a big monitor to my ubuntu laptop.
# Unity has nice window tiling shortcuts that need the number keypad to work.
# ctrl-alt-num4 sends a window left, ctrl-alt-num6 sends a window right, etc.

STATUS=$(gsettings get org.gnome.desktop.a11y.keyboard mousekeys-enable) #Are mousekeys on (true or false)

if [ "$STATUS" == "true" ]
then
  gsettings set org.gnome.desktop.a11y.keyboard mousekeys-enable false 

  notify-send -i  "/usr/share/icons/gnome/48x48/devices/keyboard.png" "                    Mousekeys OFF"
  echo "Mousekeys is OFF "

else
  gsettings set org.gnome.desktop.a11y.keyboard mousekeys-enable true
  xkbset ma 60 20 10 10 5

  notify-send -i  "/usr/share/icons/gnome/48x48/devices/keyboard.png" "                    Mousekeys ON"
  echo "Mousekeys are ON"
fi