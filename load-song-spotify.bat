@echo off
color 0c
:MainMenu

echo.	
call downloader\Scripts\activate

set /p URL= insert URL %~1 = 

spotdl %URL% 

pause
cls 
goto MainMenu
--log-level ERROR