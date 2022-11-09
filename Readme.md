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
