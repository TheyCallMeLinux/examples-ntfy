#! /bin/bash
dir=$(pwd)
. "$dir"/ntfy.conf
if [ $(docker ps | wc -l) -gt "$running_cnt" ]; then curl ntfy.sh \
  -d '{
    "topic": "'$notifname'",
    "message": "Dude, is our docker containers running?",
    "title": "Docker major issue!",
    "tags": ["warning","computer"],
    "priority": 4,
    "click": "http://portainer.local:9000/#!/auth",
    "actions": [{ "action": "view", "label": "Admin panel", "url": "http://portainer.local:9000/#!/auth" }]
  }'
else  echo "$dt" '|' "INFO |---Docker.sh| The '$running_cnt' containers are running, load is currently at '$LOADPR' on server '$HOST'"
fi
