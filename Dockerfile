FROM pottava/java:8
MAINTAINER naou <monaou@gmail.com>

ADD https://s3.amazonaws.com/Minecraft.Download/versions/1.12.2/minecraft_server.1.12.2.jar /server.jar
COPY run.sh /run.sh

RUN mkdir /minecraft_server
WORKDIR   /minecraft_server
VOLUME    /minecraft_server

EXPOSE 25565
CMD /run.sh

