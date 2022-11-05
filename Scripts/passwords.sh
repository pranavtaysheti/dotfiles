rclone mount GoogleDrive: ~/Google\ Drive --vfs-cache-mode full --vfs-cache-max-age 360h --dir-cache-time 360h --vfs-cache-max-size 1024M --daemon
secret-tool lookup database passwords | keepassxc --pw-stdin --keyfile ~/Certificates/passwords.keyx ~/Google\ Drive/Passwords/Passwords_web.kdbx &
