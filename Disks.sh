#! /bin/bash
dir=$(pwd)
. "$dir"/ntfy.conf
if [ "$space_used_disk" -gt "$alert_disk" ]; then curl ntfy.sh \
  -d '{
    "topic": "'$notifname'",
    "message": "Disk space is almost full! Currently the alert is set at '$alert_disk'",
    "title": "Low disk space alert",
    "tags": ["warning","cd"],
    "priority": 4,
    "click": "http://cam.local/zm",
    "actions": [{ "action": "view", "label": "Admin panel", "url": "http://cam.local/zm" }]
  }'
else  echo "$dt" '|' "INFO |----Disks.sh| All HDD/SSD space looks fine from here, '$space_used_disk'% used storage on server '$HOST'"
fi
