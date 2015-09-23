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

#### `/home/Dropbox`

Dropbox sync folder, ensure the directory is owned by nobody:users. (i.e. /mnt/user/dropbox or /media/Tower/dropbox)

### `/config`

Dropbox configuration folder, in this path, Dropbox will store it's configuration files.

## Docker run command:

```
docker run -d --net=host -v $HOME/Dropbox:/home/Dropbox \
              -v $HOME/.dropbox:/config \
              -e TZ=UTC \
              --name=dropbox dropbox
```

## Get URL to link the container to your Dropbox account:
```
docker logs Dropbox
```
