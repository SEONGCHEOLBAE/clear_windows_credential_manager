@echo off

cmdkey.exe /list > "%TEMP%\credential_List"
findstr.exe Domain "%TEMP%\credential_List" > "%TEMP%\usersonly"
FOR /F "tokens=1,2 delims= " %%G IN (%TEMP%\usersonly) DO cmdkey.exe /delete:%%H
del "%TEMP%\credential_List" /s /f /q
del "%TEMP%\usersonly" /s /f /q
echo All done
pause