#!/bin/bash

filename="/home/ubuntu/week3/addressbook.txt" 
touch $filename

add() {
    echo "Enter name, phone and email:"
    read inputLine
    echo "$inputLine" >> $filename
}

search() {
    echo "Enter search criteria:"
    read searchCrit
    grep "$searchCrit" $filename
}

remove() {
    echo "Enter remove criteria:"
    read removeCrit
    grep -v "$removeCrit" $filename > temp && mv temp $filename
}

case "$1" in
    "add")
        add;;
    "search")
        search;;
    "remove")
        remove;;
esac
