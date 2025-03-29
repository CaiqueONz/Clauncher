Write-Host -Fore Yellow "Downloading From Repository.."


try {
    Invoke-WebRequest -Uri "https://github.com/CaiqueONz/Clauncher/tlcore.exe" -OutFile "tlcore.exe"
}
catch {
    Write-Host -Fore Red "Failed to download via Repository, attempting to download via mirror..."
    

    try {
        Invoke-WebRequest -Uri "https://tlauncher.co.com/index.php?do=download&id=518" -OutFile "tlcore.exe"
    }
    catch {
        Write-Host -Fore Red "Failed to download via mirror. Exiting..."
        exit 1
    }
}

Write-Host -Fore Blue "Download successful! Starting file..."


Start-Process -FilePath "tlcore.exe"
