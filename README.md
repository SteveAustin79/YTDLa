# YTDL - YouTube Channel Downloader 1.0
A command line YouTube channel video downloader. Download one, multiple or all videos from a specific YouTube channel in any available resolution as mp4.

Restricted video download possible, but requires authentication via accounts.google.com/device.

### Features
- channel config file with default filters (file must be located in target directory)
- filters: video title name, minimum video views, video duration, exclude/include video ID's 
- channels.txt: YouTube Channels list
- video resolutions > 1080p only provided as webm by YouTube -> converted to mp4 after downloading
- auto download highest available resolution (can be limited)
- year sub directory structure switch in config.json
- skipping already downloaded videos

### History
- 20250226 - v0.1 - initial version, based on YTDLchannel v1.0, added mp3 support

## Disclaimer
- this app is meant only for non-copyright/non-protected videos, or for backup purposes

## Prerequisites
- Git (https://git-scm.com/downloads)
- Python (https://www.python.org)
- FFMPG (https://ffmpeg.org)

## Installation
1. Clone repository:
```diff
git clone https://github.com/SteveAustin79/YTDLa.git
```
2. Change directory
```diff
cd YTDLa
```
3. Install python environment
```diff
python -m venv venv
```
4. Install dependencies
```diff
venv/bin/python -m pip install pytubefix ffmpeg-python
```
5. Create and modify config.json
```diff
cp config.example.json config.json
nano config.json
```
6. Add channel URLs to channels.txt (optional)
```diff
nano channels.txt
```
7. Run the application
```diff
venv/bin/python YTDLa.py
```

## Update
```diff
git pull https://github.com/SteveAustin79/YTDLa.git
```
