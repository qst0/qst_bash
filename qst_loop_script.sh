#!/bin/bash

# qst0 : loop-script.sh : loop a script, display a message and wait.
# This is dependant on the site check script that I made, rename / fix all of this

SCRIPT_TO_LOOP="qst_check_site.sh"
WAIT_TIME=30

# WAIT_MESSAGE will be displayed each loop after the script was run
WAIT_MESSAGE="waiting ${WAIT_TIME} seconds and looping..."

while [ 42 ]
do
  bash $SCRIPT_TO_LOOP
  echo $WAIT_MESSAGE
  sleep $WAIT_TIME
done
