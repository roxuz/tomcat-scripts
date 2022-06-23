#!/bin/bash
export PATH=/usr/sbin:/usr/local/bin:/usr/bin:/usr/local/sbin:$PATH
export JAVA_HOME=/usr
LOGFILE=/home/oracle/scripts/logs/ords-`date +"%Y""%m""%d"`.log
cd /u01/ords
export JAVA_OPTIONS="-Dorg.eclipse.jetty.server.Request.maxFormContentSize=3000000 -Duser.timezone=UTC"
nohup $JAVA_HOME/bin/java ${JAVA_OPTIONS} -jar ords.war standalone >> $LOGFILE 2>&1 &
echo "View log file with : tail -f $LOGFILE"
