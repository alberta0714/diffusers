#!/usr/bin/env bash
git add .
git commit -a -m "ac"
git push
SSHREMOTE=root@152.136.186.81

ssh ${SSHREMOTE} 'cd /usr/local/code/onediff; git pull'

exit 0