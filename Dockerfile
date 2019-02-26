FROM ubuntu
RUN apt-get update && apt-get install -y wget lib32gcc1 lib32tinfo5 unzip nginx lib32stdc++6
RUN useradd -ms /bin/bash steam

USER steam
WORKDIR /home/steam
RUN wget -O /tmp/steamcmd_linux.tar.gz http://media.steampowered.com/installer/steamcmd_linux.tar.gz && tar -xvzf /tmp/steamcmd_linux.tar.gz && rm /tmp/steamcmd_linux.tar.gz
RUN ./steamcmd.sh +login anonymous +force_install_dir ./css +app_update 232330 validate +quit
RUN ln -s /home/steam/linux32/ /home/steam/.steam/sdk32

# Create start_gameserver script
RUN echo -e "cd ~/css \n./srcds_run -console -game cstrike +map de_dust2 +maxplayers 32" > ./start_gameserver && chmod +x ./start_gameserver 

# Declare expose ports
EXPOSE 27015/udp
EXPOSE 27015
EXPOSE 1200
EXPOSE 27005/udp
EXPOSE 27020/udp
EXPOSE 26901/udp

ENTRYPOINT ["./start_gameserver"]