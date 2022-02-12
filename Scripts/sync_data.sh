#!/bin/bash

REMOTE_NAME="DriveDellG3"
WEBFILES_PARENT="~/.gdriveweb/"
UNION_REMOTE_NAME="DriveDellG3Union"
DATA_LOCATION="/mnt/DATA/"

FOLDERS=('Manipal Academics' 'Allskier' 'Inbox' 'JEE' 'Me' 'MotoManipal' 
	'Photo Collections' 'Photos' 'Wallpapers')

TEMP_PARENT_FOLDER="$DATA_LOCATION""sync_temp/"

for FOLDER in "${FOLDERS[@]}";
do
    
    REMOTE=$REMOTE_NAME:"$FOLDER"
    LOCAL="$DATA_LOCATION""$FOLDER"
    WEBFILES_FOLDER="$WEBFILES_PARENT""$FOLDER"
    UNION_FOLDER="$UNION_REMOTE_NAME:""$FOLDER"
    TEMP_FOLDER="$TEMP_PARENT_FOLDER""$FOLDER"
    
    if [ "$1" == "downsync" ]
    then
	
	mkdir "$TEMP_PARENT_FOLDER"
	mkdir "$TEMP_FOLDER"
	rsync -r $LOCAL $TEMP_FOLDER --include="*/" --include="*.gdoc" \
		--exclude="*" --prune-empty-dirs
        rclone sync "$REMOTE" "$WEBFILES_FOLDER" --drive-export-formats=desktop --include="*.desktop"
	rclone sync "$REMOTE" "$LOCAL" --drive-export-formats=desktop --exclude="*.desktop"
	rsync $TEMP_FOLDER $LOCAL
	rmdir $TEMP_PARENT_FOLDER
    
    elif [ "$1" == "upsync" ] 
    then
        
	rclone sync "$UNION_FOLDER" "$REMOTE"
    
    else
        echo "Supported options are 'upsync', 'downsync'"
    
    fi

done
