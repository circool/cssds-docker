# cssds-docker
Counter-Strike: Source dedicated server as docker image


## Usage


### Run container
```bash
docker run -ti circool/cssds-docker
```


### Starting
Gameserver will run automatic, for manual start use
```bash
cd /home/steam/css && ./srcds_run -console -game cstrike +map de_dust2 +maxplayers 32 +ip <ip_address>
```

or

```bash
./start_gameserver
```


### Update
```bash
cd /home/steam/css && ./steamcmd.sh +login anonymous +force_install_dir ./css +app_update 232330 validate +quit
```
