#!/bin/bash
dir=$(/usr/bin/pwd)
logname=logfile_ntfy.log
runtime="1 minute"
endtime=$(date -ud "$runtime" +%s)

while [[ $(date -u +%s) -le $endtime ]]
do
    echo "Time Now: `date +%H:%M:%S`"
    echo "Sleeping for 30 seconds"
    sh "$dir"/Disks.sh >> "$dir"/"$logname" 2>&1; \
    sh "$dir"/CPUload.sh >> "$dir"/"$logname" 2>&1; \
    sh "$dir"/Docker.sh >> "$dir"/"$logname" 2>&1; \
    sh "$dir"/Jelly.sh >> "$dir"/"$logname" 2>&1; \
    sh "$dir"/Used-RAM.sh >> "$dir"/"$logname" 2>&1; \
    sh "$dir"/Process.sh >> "$dir"/"$logname" 2>&1; \
    sh "$dir"/Flood.sh >> "$dir"/"$logname" 2>&1; \
    sleep 30
done
