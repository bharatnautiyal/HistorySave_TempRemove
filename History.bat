#TEST
@echo off
:top
for /f "delims=: tokens=2" %%i in ('ipconfig /displaydns^|find "Record Name"') do (find "%%i" /i history.txt >nul 2>&1|| echo %%i >>history.txt)
timeout /nobreak 5 >nul 2>&1
sort history.txt /o history.txT
goto TOP
