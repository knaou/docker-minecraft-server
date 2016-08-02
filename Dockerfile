FROM pottava/java:8
MAINTAINER naou <monaou@gmail.com>

WORKDIR /minecraft_server
ADD https://s3.amazonaws.com/Minecraft.Download/versions/1.10/minecraft_server.1.10.jar /minecraft_server.jar
COPY run.sh /run.sh
VOLUME /minecraft_server
EXPOSE 25565
CMD /run.sh

