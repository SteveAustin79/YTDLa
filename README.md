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
python3 -m venv venv
```
4. Install dependencies
```diff
sudo venv/bin/python3 -m pip install pytubefix ffmpeg-python
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
venv/bin/python3 YTDLa.py
```

## Update
```diff
git pull https://github.com/SteveAustin79/YTDLa.git
```
