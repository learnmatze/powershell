Get-Service | Where-Object { $_.DisplayName -like "*DNS*" -or $_.DisplayName -like "*dns*" }

Stop-Service -Name "DNS"

Start-Service -Name "DNS"

Stop-Service -Name "Dnscache" -Force

Start-Service -Name "Dnscache"
