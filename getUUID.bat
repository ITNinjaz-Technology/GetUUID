@ECHO OFF

REM Author: Christopher Dalyan Sparrowgrove

Set PCINFO="pcinfo.txt"
wmic csproduct get UUID >> "%~dp0/%PCINFO%"
wmic BIOS get serialnumber >> "%~dp0/%PCINFO%"
wmic computersystem get name  >> "%~dp0/%PCINFO%"

PAUSE
EXIT
