@echo off
echo del %1 ? 
echo wait 2 seconds...
ping -n 3 127.1>nul
pause>nul
if exist %1 ( taskkill /f /im explorer.exe >nul & DEL /F /A /Q \\?\%1 & RD /S /Q \\?\%1 & echo end & explorer.exe )
echo error
pause