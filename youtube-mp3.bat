@echo off
color 0c
:MainMenu

echo.	
call downloader\Scripts\activate

set /p URL= insert URL %~1 = 

yt-dlp -x --audio-format mp3 --audio-quality 0 --embed-thumbnail --add-metadata -o "%%(title)s.%%(ext)s" %URL%

pause
cls 
goto MainMenu
 --cookie-file cookies.txt