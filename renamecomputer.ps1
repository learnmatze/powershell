
$computername = Read-Host "Bitte geben Sie den neuen Computernamen an."

Rename-Computer -NewName $computername -Restart
