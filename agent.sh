#!/bin/bash
dir=$(/usr/bin/pwd)
logname=logfile_ntfy.log
for i in {1..2}; do \
sleep 15;
sh "$dir"/Disks.sh >> "$dir"/"$logname" 2>&1; \
sh "$dir"/CPUload.sh >> "$dir"/"$logname" 2>&1; \
sh "$dir"/Docker.sh >> "$dir"/"$logname" 2>&1; \
sh "$dir"/Jelly.sh >> "$dir"/"$logname" 2>&1; \
sh "$dir"/Used-RAM.sh >> "$dir"/"$logname" 2>&1; \
sh "$dir"/Process.sh >> "$dir"/"$logname" 2>&1; \
sh "$dir"/Flood.sh >> "$dir"/"$logname" 2>&1;
sleep 15;
done
