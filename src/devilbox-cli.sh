#!/bin/bash

##########################
# For test purposes only #
##########################

source config.sh

source utils/codes.sh
source utils/messages.sh
source utils/prompt.sh

source commands/lib/choices.sh
source commands/lib/config.sh
source commands/lib/docker.sh

source commands/config/httpd.sh
source commands/config/php.sh
source commands/config/mysql.sh
source commands/config/docroot.sh
source commands/config/projects.sh

source commands/config.sh
source commands/enter.sh
source commands/help.sh
source commands/open.sh
source commands/restart.sh
source commands/run.sh
source commands/stop.sh
source commands/update.sh
source commands/version.sh

source main.sh
