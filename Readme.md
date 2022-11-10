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


**agent.sh** is basically the main script that launche the others twice (cronjob can only do each minute, so we recheck after 30s)

*CPUload.sh* average load of the server

*Disks.sh* check the percentage remaining on the main root drive

*Docker.sh* reports how many containers are currently running with a configurable treshhold 

*Flood.sh* is monitoring for the container "transmission-express_transmission-openvpn" as an example and reports when running

*Jelly.sh* reports the Health status of the Jellyfin server (this example running on localhost)

*Process.sh* reports the command of the most CPU Hungry running PID on the machine
*Used-RAM.sh* basically the same as above, for RAM


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
