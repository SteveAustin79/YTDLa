Write-Host ""
Write-Host ""
Write-Host ""
Write-Host "Welcome to the YTDLa Windows 10/11 Installation Script! - PART 2/2" -ForegroundColor Cyan
Write-Host ""
Write-Host "This script will create virtual Python environment (venv)."
Write-Host ""
Write-Host "Estimated duration: 20 Seconds"
Write-Host ""
Read-Host "Press ENTER to continue..."

Start-Process -NoNewWindow -Wait -FilePath "python" -ArgumentList "-m venv venv"

Write-Host ""
Write-Host "Virtual Python environment created! Creating shortcuts..."

$desktopPath = [System.Environment]::GetFolderPath("Desktop")  # Get desktop path
$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
$batchFile = Join-Path -Path $scriptDir -ChildPath "Start_YTDLa.bat"  # Change to your actual .bat file path
$shortcutPath = Join-Path $desktopPath "Start_YTDLa.lnk"  # Name of the shortcut

# Create a WScript Shell object
$WScriptShell = New-Object -ComObject WScript.Shell

# Create the shortcut
$Shortcut = $WScriptShell.CreateShortcut($shortcutPath)
$Shortcut.TargetPath = $batchFile
$Shortcut.WorkingDirectory = Split-Path -Parent $batchFile  # Set working directory
$Shortcut.Save()

Write-Host "Shortcut created on Desktop!"

Write-Host ""
Write-Host "Open YTDLa with Start_YTDLa.bat. To update the app start Update_YTDLa.bat."
Read-Host "Press ENTER to continue..."
