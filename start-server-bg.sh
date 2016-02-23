#!/bin/bash

filename='jx_androidARMv8'

if [ "$#" -ne 1 ]; then
	echo "You need to specify architecure (ia32 / arm)" 
  exit 0
fi

set -E

if [ "$1" = 'ia32' ]; then
  filename='jx_android32v8'
fi

adb shell "/data/local/tmp/jxcore-proxy/$filename/jx /data/local/tmp/jxcore-proxy/server.js $filename &"
