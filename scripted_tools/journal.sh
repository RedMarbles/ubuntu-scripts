#!/bin/bash
# Manages a timestampped journal file. Adds timestamp to file and opens it each time the script is run.

#Get formatted timestamp
timestamp=`date +"%^A %t %d-%m-%y %T"`
message="LOG : "
full_message="\n\n-------------------\n$message $timestamp\n"
#echo -e $full_message

#Add timestamp to log file
echo -e $full_message >> ~/Desktop/journal.txt

#Open log file in editor
subl ~/Desktop/journal.txt &
disown

echo -e "Log entry created at $full_message"

exit 0