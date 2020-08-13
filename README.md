# Clear Windows Credential Manager

* clear-all-cert.cmd
  * Range is `cap1.PNG`blue line

`raw`
```bat
@echo off

cmdkey.exe /list > "%TEMP%\credential_List"
findstr.exe target "%TEMP%\credential_List" > "%TEMP%\usersonly"
FOR /F "tokens=1,2 delims= " %%G IN (%TEMP%\usersonly) DO cmdkey.exe /delete:%%H
del "%TEMP%\credential_List" /s /f /q
del "%TEMP%\usersonly" /s /f /q
echo All done
pause
```


* clear-only-win-cert.cmd
  * Range is `cap1.PNG`red line

`raw`
```bat
@echo off

cmdkey.exe /list > "%TEMP%\credential_List"
findstr.exe Domain "%TEMP%\credential_List" > "%TEMP%\usersonly"
FOR /F "tokens=1,2 delims= " %%G IN (%TEMP%\usersonly) DO cmdkey.exe /delete:%%H
del "%TEMP%\credential_List" /s /f /q
del "%TEMP%\usersonly" /s /f /q
echo All done
pause
```

* disable_cert.bat
  * Range is `cap1.PNG`red line

`raw`
```
@echo off
echo "Step 1:"
echo "    [windows key + r] -> [control panel] -> [User account] -> [Windows Credential management]"
echo "    Delete all session"
echo "Step 2 : "
echo "    Change text at 6 line in this file "
echo "    UseRasCredentials=1 -> UseRasCredentials=0"

notepad C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Network\Connections\Pbk\rasphone.pbk
```
