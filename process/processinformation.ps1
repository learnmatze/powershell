$process = Get-Process -Name "python*" | Select-Object ProcessName, Id, ParentId 
Write-Host $process

# $targetPID = 1234  # Ersetze 1234 durch die gewünschte PID
$process = Get-Process -Name "python*"
# $process = Get-Process -Id $targetPID
if ($process) {
    Write-Host "Process Information for PID $($process.Id):"
    Write-Host "-----------------------------"
    Write-Host "Name: $($process.ProcessName)"
    Write-Host "Path: $($process.Path)"
    Write-Host "Command Line: $($process.CommandLine)"
    Write-Host "Start Time: $($process.StartTime)"
    Write-Host "User: $($process.UserName)"
    Write-Host "CPU Time: $($process.TotalProcessorTime)"
    Write-Host "Memory (Working Set): $($process.WorkingSet64) bytes"
    Write-Host "Parent Process ID: $($process.ParentId)"
}
else {
    Write-Host "Process with PID $targetPID not found."
}