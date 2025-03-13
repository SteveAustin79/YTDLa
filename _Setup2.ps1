Write-Host ""
Write-Host "Welcome to the YTDLa Windows 10/11 Installation Script! - PART 2/2" -ForegroundColor Cyan
Write-Host ""
Write-Host "This script will create virtual Python environment (venv) and install dependencies."
Write-Host ""
Write-Host "Estimated duration: 20 Seconds"
Write-Host ""
Read-Host "Press ENTER to continue..."

Start-Process -NoNewWindow -Wait -FilePath "python" -ArgumentList "-m venv venv"

Start-Process -NoNewWindow -Wait -FilePath "python" -ArgumentList "-m pip install pytubefix ffmpeg-python"

Write-Host ""
Write-Host "Virtual Python environment created and dependencies installed!"
Write-Host ""
Write-Host "Open YTDLa with Start.bat. To update the app start Update.bat."
Read-Host "Press ENTER to continue..."
