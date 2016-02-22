#!/bin/bash

filename='jx_androidARMv8'
url=$2

if [ "$#" -ne 2 ]; then
  echo "You need to specify arch and redirect url. e.g ia32 http://192.168.0.15"
  exit 0
fi

set -E

if [ "$1" = 'ia32' ]; then
  filename='jx_android32v8'
fi

adb shell "/data/local/tmp/jxcore-proxy/$filename/jx /data/local/tmp/jxcore-proxy/server.js $2"
