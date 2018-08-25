FROM pottava/java:8
MAINTAINER naou <monaou@gmail.com>

ADD https://launcher.mojang.com/mc/game/1.13.1/server/fe123682e9cb30031eae351764f653500b7396c9/server.jar /server.jar
COPY run.sh /run.sh

RUN mkdir /minecraft_server
WORKDIR   /minecraft_server
VOLUME    /minecraft_server

EXPOSE 25565
CMD /run.sh

