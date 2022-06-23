#!/bin/bash

DATE=`date "+%Y%m%d"`
output_path=/tmp/
src_path=/u03/
host=`hostname -s`


cd $src_path
tar -zcvpf ${output_path}tomcat-fs-${host}-${DATE}.tar.gz *
