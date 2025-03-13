Write-Host ""
Write-Host "Welcome to the YTDLa Windows 10/11 Installation Script! - PART 2" -ForegroundColor Cyan
Write-Host ""
Write-Host "This script will create virtual Python environment (venv)"
Write-Host ""
Write-Host "Estimated duration: 20 Seconds"
Write-Host ""
Read-Host "Press ENTER to continue..."

Start-Process -NoNewWindow -Wait -FilePath "python" -ArgumentList "-m venv ../venv"

Write-Host ""
Read-Host "Virtual Python environment created! Press ENTER to continue..."
