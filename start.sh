#!/bin/sh

export HOME=/home/
[ ! -L /home/.dropbox ] && ln -s /config /home/.dropbox
/.dropbox-dist/dropboxd
