#!/bin/sh
pwd=$(cd "$(dirname "$0")"; pwd)
echo $pwd
STDOUT=$pwd/logs/stdout.log
STDERR=$pwd/logs/stderr.log
test -d $pwd/logs/ || mkdir -p $pwd/logs
APPID=got
CLASS_PATH=$pwd/:./lib/*
echo $CLASS_PATH
MAIN_CLASS=com.Main
RESOURCES_DIR=$pwd/resources          
/usr/bin/java -D$APPID -Xms128m -Xmx128m -server -XX:+UseG1GC -XX:+UseNUMA -XX:+PrintGCDetails -Xloggc:gc.log \
-cp $CLASS_PATH $MAIN_CLASS>>$STDOUT 2>>$STDERR&