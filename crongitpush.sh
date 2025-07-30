#!/bin/bash

cat ~/.bash_history >> commandshistory.txt

# Always try to add & commit
git add -u commandshistory.txt
if git commit -m "Appending commands history on $(date '+%Y-%m-%d %H:%M:%S') env:dev"; then
    git push origin master
    echo "History updated and pushed."
else
    echo "new commands since last update."
fi
