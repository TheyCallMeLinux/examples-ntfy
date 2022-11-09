#! /bin/bash
dir=$(pwd)
. "$dir"/ntfy.conf
if [ $(grep -o "^[0-9]*" /proc/loadavg) -gt "$loadavg_limit" ]; then curl ntfy.sh \
  -d '{
    "topic": "'$notifname'",
    "message": "Holy smokes batman! The load on server '$hostname' is very high! its over '$LOAD'",
    "title": "CPU average load alert",
    "tags": ["warning","computer"],
    "priority": 5,
    "click": "http://portainer.local:9000/#!/auth",
    "actions": [{ "action": "view", "label": "Admin panel", "url": "http://portainer.local:9000/#!/auth" }]
  }'
else  echo "$dt" '|' "INFO |-CPU-load.sh| Not overloaded, therefore not sending any messages, load is currently at '$LOADPR' on server '$HOST'"
fi
