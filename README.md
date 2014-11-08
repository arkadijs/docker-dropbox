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

#### `/dropbox`

Dropbox sync folder, ensure the directory is owned by nobody:users. (i.e. /mnt/user/dropbox or /media/Tower/dropbox)

### `/config`

Dropbox configuration folder, in this path, Dropbox will store it's configuration files.

## Docker run command:

```
docker run -d --net=host -v /*your_dropbox_location*:/dropbox \
              -v /opt/appdata/dropbox:/config \
              -e TZ=America/Edmonton \
              --name=Dropbox hurricane/docker-dropbox
```

## Get URL to link the container to your Dropbox account:
```
docker logs Dropbox
```
