#docker Dropbox	

## Description:

This is a Dockerfile for "Dropbox" - (https://www.dropbox.com/).
Specifically for use within an unRAID environment.

## Build from docker file:

```
git clone https://github.com/HurricaneHernandez/docker-dropbox.git 
cd docker-dropbox
docker build -t dropbox . 
```

## Volumes:

#### `nobody/Dropbox`

Dropbox sync folder, ensure the directory is owned by nobody:users. (i.e. /opt/downloads/dropbox or /media/Tower/dropbox)

## Docker run command:

```
docker run -d --net=host -v /*your_dropbox_location*:/nobody/Dropbox \
              -v /etc/localtime:/etc/localtime:ro
              --name=DropboxDaemon hurricane/docker-dropbox
```

## Get URL to link the container to your Dropbox account:
```
docker logs DropboxDaemon
```
