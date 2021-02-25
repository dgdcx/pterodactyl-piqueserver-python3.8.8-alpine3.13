FROM        sonicscream/piqueserver-python3.8.8-alpine3.13:latest
LABEL       author="Sonicscream" maintainer="sonicscream@cryptoclover.cc"
RUN         adduser -D -h /home/container container
USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container
COPY        ./entrypoint.sh /entrypoint.sh
CMD         ["/bin/ash", "/entrypoint.sh"]
