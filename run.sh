#!/bin/sh

cd /minecraft_server
echo "eula=true" > eula.txt
java -jar /server.jar

