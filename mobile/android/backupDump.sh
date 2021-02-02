#!/bin/bash
echo "Usage: ./backupDump.sh com.app.name"
adb backup -f backup.ab -noapk $1


dd if=backup.ab bs=1 skip=24 | python -c "import zlib,sys;sys.stdout.write(zlib.decompress(sys.stdin.read()))" > backup.tar

rm backup.ab
