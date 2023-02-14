#!/bin/sh

secret-tool lookup database passwords | keepassxc --pw-stdin --keyfile ~/Certificates/passwords.keyx ~/Google\ Drive\ -\ Offline/Passwords/Passwords_web.kdbx
