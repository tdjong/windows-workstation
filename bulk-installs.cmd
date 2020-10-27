@echo off
SET DIR=%~dp0%
cd %DIR%
::run bulk installer
powershell -NoProfile -ExecutionPolicy Bypass -Command "& './bulk-installs.ps1' %*"
pause