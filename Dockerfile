FROM pottava/java:8
MAINTAINER naou <monaou@gmail.com>

ADD https://launcher.mojang.com/v1/objects/3737db93722a9e39eeada7c27e7aca28b144ffa7/server.jar /server.jar
COPY run.sh /run.sh

RUN mkdir /minecraft_server
WORKDIR   /minecraft_server
VOLUME    /minecraft_server

EXPOSE 25565
CMD /run.sh

