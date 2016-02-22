filename='jx_androidARMv8'

set -E

if [ $1 == 'ia32' ]; then
  filename='jx_android32v8'
fi

adb shell "/data/local/tmp/jxcore-proxy/$filename/jx /data/local/tmp/jxcore-proxy/server.js &"
