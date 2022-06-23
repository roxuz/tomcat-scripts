#!/bin/bash
export PATH=/usr/sbin:/usr/local/bin:/usr/bin:/usr/local/sbin:$PATH
kill `ps -ef | grep ords.war | grep -v grep | awk '{print $2}'` 
