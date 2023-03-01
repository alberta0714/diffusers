#!/usr/bin/env bash
git add .
git commit -a -m "ac"
git push
SSHREMOTE=root@152.136.186.81

ssh ${SSHREMOTE} 'cd /usr/local/code/onediff; git pull'
ssh ${SSHREMOTE} 'cd /usr/local/code/onediff; python3 examples/text_to_image_sd21.py'
#ssh ${SSHREMOTE} 'cd /usr/local/code/onediff; python3 examples/text_to_image_chill.py'

scp ${SSHREMOTE}:/usr/local/code/onediff/cat_2_1_768.png /Users/sunzhanchao/stabilityai/
ssh ${SSHREMOTE} 'cd /usr/local/code/onediff; rm -rf *.png'

exit 0