@echo off
set /p name="What is your name? "
echo Hi %name%
set /p ans="What would you like to do? (A)dd or (S)ubtract: "
echo %ans%
if /i %ans%==a (goto add) else if %ans%==s (goto subtract)
:back
echo testtest
pause
exit /b

:add
set /p num1="First number: "
set /p num2="Second number: "
set /a num3=%num1%+%num2%
echo %num1% + %num2% = %num3%
goto back

:subtract
set /p num1="First number: "
set /p num2="Second number: "
set /a num3=%num1%-%num2%
echo %num1% - %num2% = %num3%
goto back
