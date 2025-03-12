@echo off
SET FFMPEG="%CD%\Sources\ffmpeg-master-latest-win64-gpl\bin"
setx PATH "%GIT%" /m
venv\Scripts\python.exe YTDLa.py
