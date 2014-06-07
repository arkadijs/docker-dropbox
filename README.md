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

#### `/Dropbox`

Dropbox sync folder. (i.e. /opt/downloads/dropbox or /media/Tower/dropbox)

## Docker run command:

```
docker run -d --net=host -v /*your_dropbox_location*:/Dropbox \
              --name=DropboxDaemon hurricane/docker-dropbox
```

## Get URL to link the container to your Dropbox account:
```
docker logs DropboxDaemon
```
