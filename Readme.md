CONTENTS OF THIS FILE
---------------------

 * Introduction
 * Requirements
 * Installation
 * Configuration
 * Troubleshooting
 * FAQ

INTRODUCTION
------------
Simple ntfy example

***

1. **agent.sh** is basically the main script that launches the others twice (cronjob can only do each minute, so we recheck after 30s)

2. *CPUload.sh* average load of the server

3. *Disks.sh* check the percentage remaining on the main root drive

4. *Docker.sh* reports how many containers are currently running with a configurable treshhold 

5. *Flood.sh* is monitoring for the container "transmission-express_transmission-openvpn" as an example and reports when running

6. *Jelly.sh* reports the Health status of the Jellyfin server (this example running on localhost)

7. *Process.sh* reports the command of the most CPU Hungry running PID on the machine

8. *Used-RAM.sh* basically the same as above, for RAM

9. *ntfy.conf* is where the configurable values can be edited

REQUIREMENTS
------------
brain

INSTALLATION
------------
Download zip content to directory of choice

CONFIGURATION
-------------
sudo cronjob -e and select your text editor of choice
then enter the last line like this example:

    #
    # For more information see the manual pages of crontab(5) and cron(8)
    #
    # m h  dom mon dow   command
    * * * * * cd /path/of/the/script && /bin/sh agent.sh




TROUBLESHOOTING
---------------
Well this is kinda straight forward. Please see ntfy.sh examples for more info
<a href="http://ntfy.sh" title="ntfy">ntfy</a>

FAQ
---
