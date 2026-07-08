@echo off
title Python Venv + SpotDL Installer

echo ========================================
echo Creating Python Virtual Environment...
echo ========================================

python -m venv downloader

if errorlevel 1 (
    echo.
    echo ERROR: Failed to create virtual environment.
    pause
    exit /b
)

echo.
echo ========================================
echo Activating Virtual Environment...
echo ========================================

call downloader\Scripts\activate.bat

echo.
echo ========================================
echo Upgrading pip...
echo ========================================

python -m pip install --upgrade pip

echo.
echo ========================================
echo Installing SpotDL...
echo ========================================

pip install spotdl
pip install ffmpeg-python

echo.
echo ========================================
echo Installation Complete!
echo ========================================

echo.
python --version
pip --version
spotdl --version

echo.
pause