:loop

## setup variable
set jetzt=%DATE:~10,4%%DATE:~4,2%%DATE:~7,2%

# update
git pull

# push
git add .
git commit -m "%jetzt% data push"
git push -u origin master

# repeat
timeout 86400
#goto loop