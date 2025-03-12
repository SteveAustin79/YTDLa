@echo off
REM echo %HOMEDRIVE%
REM echo %HOMEPATH%
REM echo %CD%

SET GIT="%CD%\Sources\PortableGit\bin"
SET FFMPEG="%CD%\Sources\ffmpeg-master-latest-win64-gpl\bin"
SET PYTHON="%CD%"\venv\Scripts

REM setx PATH "%GIT%;%FFMPEG%;%PYTHON%" /m
setx PATH "%GIT%;%FFMPEG%;%PYTHON%"

ffmpeg

pause