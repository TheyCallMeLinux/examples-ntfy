#! /bin/bash
dir=$(pwd)
. "$dir"/ntfy.conf
dsk_space=$(df / --output='pcent' | grep -o "[0-9]*")

if [ $(df / --output='pcent' | grep -o "[0-9]*") -gt "$percentage_disk" ]; then curl ntfy.sh \
  -d '{
    "topic": "'$notifname'",
    "message": "Disk space is almost full! Currently the alert is set at '$percentage_disk'",
    "title": "Low disk space alert",
    "tags": ["warning","cd"],
    "priority": 4,
    "click": "http://cam.local/zm",
    "actions": [{ "action": "view", "label": "Admin panel", "url": "http://cam.local/zm" }]
  }'
else  echo "$dt" '|' "INFO |----Disks.sh| All HDD/SSD space looks fine from here, '$dsk_space'% used storage on server '$HOST'"
fi
