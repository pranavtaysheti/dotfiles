#!/bin/sh

cd /home/pranavtaysheti/Programs/tiddlywiki/
npm update
cd ./git-repos
ls | xargs -I{} git -C {} pull
