FROM pottava/java:8
MAINTAINER naou <monaou@gmail.com>

WORKDIR /minecraft_server
#ADD https://launcher.mojang.com/mc/game/1.10/server/a96617ffdf5dabbb718ab11a9a68e50545fc5bee/server.jar /minecraft_server.jar
ADD minecraft_server.jar /minecraft_server.jar
COPY run.sh /run.sh
VOLUME /minecraft_server
EXPOSE 25565
CMD /run.sh

