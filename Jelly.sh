#! /bin/bash
dir=$(pwd)
. "$dir"/ntfy.conf
status_live=$(curl -s -i http://localhost:8096/health | awk '{print $NF}' | awk 'END{print}')
status_want="Healthy"
if [ "$status_live" != "$status_want" ]; then curl ntfy.sh \
  -d '{
    "topic": "'$notifname'",
    "message": "Jellyfin is apparently showing a '$status_live' status",
    "title": "Jellyfin",
    "tags": ["warning","computer"],
    "priority": 3,
    "click": "http://portainer.local:9000/#!/auth",
    "actions": [{ "action": "view", "label": "Admin panel", "url": "http://portainer.local:9000/#!/auth" }]
  }'
else  echo "$dt" '|' "INFO |----Jelly.sh| Jellyfin container is running '$status_live', load is currently at '$LOADPR' on server '$HOST'"
fi
