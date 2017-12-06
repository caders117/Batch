echo off
set /p ans="Are you sure? (yes/no)  "
if /i NOT %ans%==yes (goto end)
set /p ans="Are you really sure? (yes/no)  "
if /i %ans%==yes (goto start) else (goto end)
:start
start
goto start
:end
echo good choice
pause
