#!/bin/bash

FILENAME=$1

DIR=~/Data/udemycoursefiles/
PSQLDIR="/var/lib/postgres/data/files/"

FILE=$DIR$FILENAME

sudo mv $FILE $PSQLDIR
sudo chown postgres:postgres $PSQLDIR$FILENAME
