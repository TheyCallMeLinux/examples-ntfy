#! /bin/bash
dir=$(pwd)
. "$dir"/ntfy.conf
if [ "$memavail" -lt "$ram_low" ]; then curl ntfy.sh \
  -d '{
    "topic": "'$notifname'",
    "message": "Holy smokes batman! The RAM is GONE on the server '$hostname' ! only '$memavail'Gb remaining",
    "title": "RAM alert, less than '$ram_low'",
    "tags": ["warning","computer"],
    "priority": 4,
    "click": "http://portainer.local:9000/#!/auth",
    "actions": [{ "action": "view", "label": "Admin panel", "url": "http://portainer.local:9000/#!/auth" }]
  }'
else  echo "$dt" '|' "INFO |-Used-RAM.sh| Not overloaded, much ram left on server '$HOST'(low ram threshold is set to '$ram_low'Gb), '$memavail'Gb of free memory remaining ";
echo "$dt" '|' "INFO |-Used-RAM.sh| Not relaying any notification. Memory is mostly taken by '$ram_chk' at '$ram_per'percent |mem--> '$ram_chk' | "
fi
