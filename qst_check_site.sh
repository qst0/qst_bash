#!/bin/bash

# qst0 : qst_check_site.sh : a simple bash script to check a site and run commands on the server
# Updated: 
# Sun Apr  1 23:47:22 UTC 2018

SITE_TO_CHECK="https://www.iifym.com/"
STATUS_200_MESSAGE="echo Status OK, Returned 200"
STATUS_200_COMMAND=""
STATUS_404_MESSAGE="echo 'THE SITE RETURNED 404.'; service php7.0-fpm restart"
STATUS_404_COMMAND="service php7.0-fpm restart"
DEFAULT_COMMAND="echo 'STATUS UNKNOWN... DEFAULT COMMAND TRIGGERED!'"

echo "Checking ${SITE_TO_CHECK}"
STATUS="$(curl -s -o /dev/null -w '%{http_code}' ${SITE_TO_CHECK})"
echo -n "Status ${STATUS} returned "; date; #LOG STATUS AND DATE
if [ $STATUS -eq 200 ]
then
  $STATUS_200_COMMAND
elif [ $STATUS -eq 404 ]
then
  $STATUS_404_COMMAND
else
  $DEFAULT_COMMAND
fi

