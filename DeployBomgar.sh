#!/bin/bash

#Created by Mike Muir for CRTG 11/29/15

##Deploy Bomgar

##Initially used by generating a bomgar jump client, uploading the compressed installer
##to AWS.
#First download compressed Jump Client from CRTG AWS Instance:
/usr/bin/curl http://web.crtg.io/base/bomgarinstallers/TestDeploy/bomgar-scc-w0idc30efz6iiwfhfeii1gj8y8g1fzw11i685zhc40jc90.dmg.zip > /tmp/bomgar.zip
#Next, uncompress downloaded jump client:
unzip -d /tmp /tmp/bomgar.zip
rm -rf /tmp/__MACOSX
rm /tmp/bomgar.zip

#Next, mount the downloaded and uncompressed .dmg:
hdiutil attach -mountpoint /Volumes/foobar /tmp/bomgar-scc-*
 
 #...and run the bomgar installer
'/Volumes/foobar/Double-Click To Start Support Session.app/Contents/MacOS/sdcust'