FROM pottava/java:8
MAINTAINER naou <monaou@gmail.com>

ADD https://s3.amazonaws.com/Minecraft.Download/versions/1.13.1/minecraft_server.1.13.1.jar /server.jar
COPY run.sh /run.sh

RUN mkdir /minecraft_server
WORKDIR   /minecraft_server
VOLUME    /minecraft_server

EXPOSE 25565
CMD /run.sh

