Get-WindowsFeature                                                                    

Get-WindowsFeature | Where-Object { $_.Installed -and $_.Name -like "Win*" }

Install-WindowsFeature -Name Windows-Server-Backup

Get-Service | Where-Object { $_.Name -like "W3SVC" }

Stop-Service w3svc

Start-Service w3svc