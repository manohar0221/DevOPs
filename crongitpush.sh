#!/bin/bash

cat ~/.bash_history >> commandshistory.txt

# Always try to add & commit
git add -A commandshistory.txt crongitpush.sh helloworld/ 
if git commit -m "Appending commands history on $(date '+%Y-%m-%d %H:%M:%S') env:dev"; then
    git push origin master
    echo "History updated and pushed."
else
    echo "new commands since last update."
fi
# using cronjob -e command and adding this line  * 18 * * * GIT_SSH_COMMAND="ssh -i /home/raj/.ssh/github_key -o StrictHostKeyChecking=no" /bin/bash /home/raj/crongitpush.sh >> /tmp/history_cron.log 2>&1

