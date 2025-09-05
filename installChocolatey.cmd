@echo off

SET DIR=%~dp0%
set powershell=%systemroot%\System32\WindowsPowerShell\v1.0\powershell.exe

::download install.ps1
%powershell% -NoProfile -ExecutionPolicy Bypass -Command "((new-object net.webclient).DownloadFile('https://chocolatey.org/install.ps1','%DIR%install.ps1'))"
::run installer
%powershell% -NoProfile -ExecutionPolicy Bypass -Command "& '%DIR%install.ps1' %*"
