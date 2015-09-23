#!/bin/sh

export HOME=/home
[ ! -L /home/.dropbox ] && ln -s /config /home/.dropbox
#chown nobody /config
exec /.dropbox-dist/dropboxd
