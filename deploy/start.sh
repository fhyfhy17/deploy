#!/bin/sh

MAIN_CLASS=com.Main
RESOURCES_DIR=$DEPLOY_DIR/resources

LIB_JARS=`ls $LIB_DIR|grep .jar|awk '{print "'$LIB_DIR'/"$0}'|tr "\n" ":"`
for xml in $RESOURCES_DIR/*.xml
	do LIB_JARS=$LIB_JARS:$xml
done
for env in $RESOURCES_DIR/*.properties
	do LIB_JARS=$LIB_JARS:$env
done

nohup java -jar $LIB_JARS $MAIN_CLASS &


#nohup java -jar deploy/lib/deploy.jar &