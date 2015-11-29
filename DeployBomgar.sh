#!/bin/bash

#Created by Mike Muir for CRTG 11/29/15

##Deploy Bomgar
##Initially used by generating a bomgar jump client, copying unique client to /Users/Shared and editing this script w/ .dmg name.
hdiutil attach -mountpoint /Volumes/foobar /Users/Shared/bomgar-scc-[uniqueID].dmg
 
'/Volumes/foobar/Double-Click To Start Support Session.app/Contents/MacOS/sdcust'