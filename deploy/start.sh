#!/bin/sh
DEPLOY_DIR=`pwd`
echo $DEPLOY_DIR
STDOUT=`pwd`/stdout.log
STDERR=`pwd`/stderr.log
APPID=got
CLASS_PATH=./:./lib/*

MAIN_CLASS=com.Main
RESOURCES_DIR=$DEPLOY_DIR/resources          
java -D$APPID -Xms128m -Xmx128m -server -XX:+UseG1GC -XX:+UseNUMA -XX:+PrintGCDetails -Xloggc:gc.log -cp $CLASS_PATH $MAIN_CLASS>>$STDOUT 2>>$STDERR&