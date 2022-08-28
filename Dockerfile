# Base Image
ARG BASE_IMAGE="cm2network/steamcmd"

FROM ${BASE_IMAGE}
USER root
RUN mkdir /opt/pzserver
RUN chown steam:steam /opt/pzserver
USER steam
RUN ./steamcmd.sh +force_install_dir /opt/pzserver +login anonymous +app_update 380870 validate +quit
COPY src /home/steam/
EXPOSE 8766/udp 16261/udp
ENTRYPOINT ["/bin/bash", "/home/steam/run_server.sh"]
