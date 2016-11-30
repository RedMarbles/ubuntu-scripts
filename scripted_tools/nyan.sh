#!/bin/bash
 
# Current list (09/02/2016) of nyancat flavours
NYAN=("original" "grumpy" "nyancoin" "gb" "technyancolor" "jazz" "mexinyan" "j5" "nyaninja" "pirate" "manyan" "elevator" "pikanyan" "zombie" "mummy" "pumpkin" "wtf" "jamaicnyan" "america" "retro" "vday" "sad" "tacnayn" "dub" "slomo" "xmas" "newyear" "fiesta" "easter" "bday" "daft" "paddy" "breakfast" "melon" "star" "balloon")
 
# Select random flavour from list
RANDOM=$$$(date +%s)
NYANN=${NYAN[$RANDOM % ${#NYAN[@]} ]}
NYANNYAN="http://www.nyan.cat/$NYANN"
 
# Open flavour in browser
xdg-open $NYANNYAN