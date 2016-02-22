# kill jx server
adb shell "kill $(lsof | grep -o  'jx[^\n]*' | awk '{print $2}' | head -1)"
