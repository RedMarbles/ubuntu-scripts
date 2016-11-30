#!/bin/bash
# Updates the system, then launches each of the desired programs I want

# Step -1: Enable Mousekeys
# mousekeys_toggle.sh

# Step 0 : Update the system - Cannot/shouldn't be done. Update manually
#sudo apt-get update
#sudo apt-get upgrade --assume-yes

# Step 1 : Open browser
# List of sites to open from browser
SITE_LIST="https://www.gmail.com"
#SITE_LIST="$SITE_LIST https://webmail-etu.ec-nantes.fr/zimbra/#1"
SITE_LIST="$SITE_LIST https://www.facebook.com/messages"
SITE_LIST="$SITE_LIST https://keep.google.com"
SITE_LIST="$SITE_LIST https://calendar.google.com"
SITE_LIST="$SITE_LIST https://translate.google.com"
#SITE_LIST="$SITE_LIST http://tomato-timer.com/#"
SITE_LIST="$SITE_LIST https://trello.com/b/75iWqcyB/vslam"
SITE_LIST="$SITE_LIST https://pioneer-project.slack.com/messages/directodom/team/"
# Open browser in background
google-chrome --enable-plugins $SITE_LIST &

# Step 2 : Open Mozilla Thunderbird email client
thunderbird &

# Step 3 : Open the journal and set up a new entry
~/bin/journal.sh &

# Step 4 : Open the relevant folder and the pdf I'm currently working open
# nautilus /home/user/Documents/Papers/General_Vision &
# evince "/home/user/Documents/Papers/General_Vision/Kermorgant - Fusion d'informations multi-capteurs en asservissement visuel.pdf" &

# Step 5 : Open the Python folder to continue on the RRT program
# evince "/home/user/Sources/Anaconda/diveintopython-5.4/diveintopython.pdf" &
# subl /home/user/Dev/Python3/test/odbchelper.py &

# Step 6 : Open a random nyan-cat page
# ~/bin/nyan.sh &
