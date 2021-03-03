:loop

echo setup variable
set jetzt=%DATE:~10,4%%DATE:~4,2%%DATE:~7,2%

echo update
git pull

echo push
git add .
git commit -m "%jetzt% data push"
git push -u origin master

echo repeat
timeout 86400
goto loop

