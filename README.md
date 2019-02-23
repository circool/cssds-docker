# cssds-docker
Counter-Strike: Source dedicated server as docker image


# Usage


# Run
```bash
docker run -ti circool/cssds-docker /bin/bash
```


## Start
```bash
cd /home/steam/css && ./srcds_run -console -game cstrike +map de_dust2 +maxplayers 32 +ip $SERVER_IP
```

## Update
```bash
cd /home/steam/css && ./steamcmd.sh +login anonymous +force_install_dir ./css +app_update 232330 validate +quit
```
