#!/bin/bash

export PATH=/usr/sbin:/usr/local/bin:/usr/bin:/usr/local/sbin:$PATH
export JAVA_HOME=/u03/java/latest
export JAVA_OPTIONS="-Dorg.eclipse.jetty.server.Request.maxFormContentSize=3000000 -Duser.timezone=UTC"

LOGFILE=/u03/config/instance1/logs/ords-`date +"%Y""%m""%d"`.log

cd /u03/ords
nohup $JAVA_HOME/bin/java ${JAVA_OPTIONS} -jar ords.war standalone >> $LOGFILE 2>&1 &
echo "View log file with : tail -f $LOGFILE"
