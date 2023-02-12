rclone mount GoogleDrive: ~/Google\ Drive \
--drive-export-formats desktop \
--vfs-cache-mode full \
--vfs-cache-max-age 360h \
--dir-cache-time 360h \
--daemon

secret-tool lookup database passwords | keepassxc --pw-stdin --keyfile ~/Certificates/passwords.keyx ~/Google\ Drive/Passwords/Passwords_web.kdbx &
fsearch -u
