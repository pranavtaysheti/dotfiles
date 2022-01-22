#!/bin/bash

REMOTE_NAME="DriveDellG3"
DATA_LOCATION="/mnt/DATA/"

FOLDERS=('Manipal Academics' 'Allskier' 'Inbox' 'JEE' 'Me' 'MotoManipal' 'Photo Collections' 'Photos' 'Wallpapers')

for FOLDER in "${FOLDERS[@]}";
do
    REMOTE=$REMOTE_NAME:"$FOLDER"
    LOCAL="$DATA_LOCATION""$FOLDER"
    
    if [ "$1" == "downsync" ]
    then
        rclone sync "$REMOTE" "$LOCAL"
    elif [ "$1" == "upsync" ] 
    then
        rclone sync "$LOCAL" "$REMOTE"
    else
        echo "Supported options are 'upsync', 'downsync'"
    fi
done