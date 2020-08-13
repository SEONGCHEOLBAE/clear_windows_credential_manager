@echo off
echo "Step 1:"
echo "    [windows key + r] -> [control panel] -> [User account] -> [Windows Credential management]"
echo "    Delete all session"
echo "Step 2 : "
echo "    Change text at 6 line in this file "
echo "    UseRasCredentials=1 -> UseRasCredentials=0"

notepad C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Network\Connections\Pbk\rasphone.pbk