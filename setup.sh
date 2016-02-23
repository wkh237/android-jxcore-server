filename='jx_androidARMv8'

set -E

if [ $1 = 'ia32' ]; then
  filename='jx_android32v8'
fi

# install modules
npm install

# remove previous version
rm -rf $filename

# download jxcore binaries
curl -O "https://jxcore.s3.amazonaws.com/0311/$filename.zip"

# unzip jxcore binaries
unzip "./$filename.zip"
rm "$filename.zip"

# push binaries into device
adb push ./ /data/local/tmp/jxcore-proxy/

rm -rf $filename

echo "JXCORE express server setup success !!"
echo "type start-server to run !!"
