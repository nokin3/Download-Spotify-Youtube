@echo off
:MainMenu
color 0c

echo.	
call downloader\Scripts\activate

set /p URL= insert URL %~1 = 

%~dp0yt-dlp -f "bv*[vcodec^=avc]+ba[ext=m4a]/b[ext=mp4]/b / bv*+ba/b" %URL%


cls 
goto MainMenu