#!/bin/env bash
dir=$(/usr/bin/pwd)
logname=logfile_ntfy.log
((maxtime = 20))
while [[ "$(date +%S)" != "00" ]]; do true; done
while true; do

    sleep 30 &

        sh "$dir"/Disks.sh >> "$dir"/"$logname" 2>&1; \
        sh "$dir"/CPUload.sh >> "$dir"/"$logname" 2>&1; \
        sh "$dir"/Docker.sh >> "$dir"/"$logname" 2>&1; \
        sh "$dir"/Jelly.sh >> "$dir"/"$logname" 2>&1; \
        sh "$dir"/Used-RAM.sh >> "$dir"/"$logname" 2>&1; \
        sh "$dir"/Process.sh >> "$dir"/"$logname" 2>&1; \
        sh "$dir"/Flood.sh >> "$dir"/"$logname" 2>&1;

    ((delay = RANDOM % maxtime + 1))
    ((maxtime += 1))
    echo "$(date) Sleeping for ${delay} seconds (max ${maxtime})."
    [[ ${delay} -gt 30 ]] && echo
    sleep ${delay}
    # Wait for timer to finish before next cycle.
    wait
done
