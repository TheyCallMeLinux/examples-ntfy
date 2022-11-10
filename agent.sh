#!/bin/bash
dir=$(/usr/bin/pwd)
logname=logfile_ntfy.log

for n in {1..2}; do currentTime=$(date +%s); \
elapsedTime=$((currentTime - lastTime)); \
if [ $elapsedTime -ge 5 ]; then \
sh "$dir"/Disks.sh >> "$dir"/"$logname" 2>&1; \
sh "$dir"/CPUload.sh >> "$dir"/"$logname" 2>&1; \
sh "$dir"/Docker.sh >> "$dir"/"$logname" 2>&1; \
sh "$dir"/Jelly.sh >> "$dir"/"$logname" 2>&1; \
sh "$dir"/Used-RAM.sh >> "$dir"/"$logname" 2>&1; \
sh "$dir"/Process.sh >> "$dir"/"$logname" 2>&1; \
sh "$dir"/Flood.sh >> "$dir"/"$logname" 2>&1; \
sleep 30; lastTime=$currentTime; i=0; fi; done
