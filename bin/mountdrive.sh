#!/bin/sh

rclone mount GoogleDrive: ~/Google\ Drive \
--drive-export-formats desktop \
--vfs-cache-mode full \
--vfs-cache-max-age 360h \
--dir-cache-time 360h
