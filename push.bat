#!/bin/bash

:loop

# regular push to github
# Set some date
jetzt=`date +%Y%m%d`

# update rep
git pull

# Now add any changes
git add .
# Now commit
git commit -m "$jetzt data push"
git push -u origin master

timeout 86400
goto loop