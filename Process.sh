#! /bin/bash
dir=$(pwd)
. "$dir"/ntfy.conf
if [ $(grep -o "^[0-9]*" /proc/loadavg) -gt "$loadavg_limit" ]; then curl ntfy.sh \
  -d '{
    "topic": "'$notifname'",
    "message": "Most CPU hungry app '$checkup' at '$perc_chk' %CPU",
    "title": "CPU usage report",
    "tags": ["warning","computer"],
    "priority": 3,
    "click": "http://portainer.local:9000/#!/auth",
    "actions": [{ "action": "view", "label": "Admin panel", "url": "http://portainer.local:9000/#!/auth" }]
  }'
else echo "$dt" '|' "INFO |--Process.sh| Not relaying any notification. The most CPU Hungry running app right now is ($perc_chk %CPU) |cpu--> $checkup   | "
fi
