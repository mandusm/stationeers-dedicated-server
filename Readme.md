# Stationeers Dedicated Server using Docker

This repo will launch a stationeers dedicated server using two container images.
1. Official steamcmd container to download the stationeer dedicated server linux binaries
2. The official, unmodified, arch linux image to run the server.

### Requirements
To run your server using this repo, you need to install docker and have the docker compose plugin. 
More information can be found at [https://docs.docker.com/compose/](https://docs.docker.com/compose/)

Technically this will work with any container runtime capable of understanding compose syntax. If you know how to use podman with compose, you probably don't need this README.

### Configuration
Server configuration can be done in `data/runstationeers-linux.sh`
Container configuration to open ports and set time zones or move mount points are done in `docker-compose.yaml`
 
### Running the server. 
Simply clone the repo to a location with enough storage space and run the following command

`docker compose up -d`

You can view the server logs using the below command. Please note, that the stationeers server is known to put out a lot of errors and warnings. This is expected and doesn't mean it's not working. 

`docker compose logs --follow`

You will know the server is working if you see lines that look similar to this:
```
stationeers-1  | 09:17:58: Version : 0.2.5225.23702
stationeers-1  | 09:17:58: Loading settings: /stationeers/gameData/settings.xml
stationeers-1  | 09:18:05: loaded 46 systems successfully
```


