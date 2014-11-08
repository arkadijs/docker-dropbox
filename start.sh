#!/bin/sh

export HOME=/home/
[ ! -L /home/.dropbox ] && ln -s /config /home/.dropbox
[ ! -L /home/Dropbox ]  && ln -s /dropbox /home/Dropbox
/.dropbox-dist/dropboxd
