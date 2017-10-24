@echo off
REM BatchTest.bat
REM Playing around with Batch

color 07
set /p name="What is your name? "
echo Hi %name%
echo new & echo.line
:start
set /p ans="What would you like to do? (A)dd or (S)ubtract: "
echo %ans%
if /i %ans%==a (goto add) else if %ans%==s (goto subtract)
:back
set /p ans="Play again? (Y/N): "
if /i %ans%==y (goto start)
color 02
echo BBBBBBBBB         AAA       TTTTTTTTTT   CCCCCCCC   HH        HH
echo BB      BB       AA AA          TT      CC       C  HH        HH
echo BB      BB      AA   AA         TT      CC          HH        HH
echo BB      BB     AA     AA        TT      CC          HH        HH
echo BB      BB    AA       AA       TT      CC          HHHHHHHHHHHH
echo BBBBBBBBB     AA       AA       TT      CC          HHHHHHHHHHHH
echo BB      BB    AAAAAAAAAAA       TT      CC          HH        HH
echo BB      BB   AA         AA      TT      CC          HH        HH
echo BB      BB   AA         AA      TT      CC          HH        HH
echo BB      BB   AA         AA      TT      CC       C  HH        HH
echo BBBBBBBBB   AA           AA     TT       CCCCCCCC   HH        HH

echo Thank you goodbye.
echo Press any key to quit
pause >nul
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
