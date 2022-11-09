#! /bin/bash
dir=$(pwd)
. "$dir"/ntfy.conf
if [ $(docker ps | grep  transmission-express_transmission-openvpn_1 | wc -l) -gt 0 ]; then curl ntfy.sh \
  -d '{
    "topic": "'$notifname'",
    "message": "Docker transmission-express is currently running",
    "title": "Docker transmissions",
    "tags": ["computer"],
    "priority": 3,
    "click": "http://portainer.local:9000/#!/auth",
    "actions": [{ "action": "view", "label": "Admin panel", "url": "http://portainer.local:9000/#!/auth" }]
  }'
else  echo "$dt" '|' "INFO |----Flood.sh| The container transmission is not running on server '$HOST'. Not relaying any notification."
fi
