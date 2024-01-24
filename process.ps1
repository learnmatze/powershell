# alle laufendenden prozesse
Get-Process -Name chrome | Select-Object ProcessName, Id | Format-Table -AutoSize

Start-Process mspaint

Get-Process -Name mspaint | Select-Object ProcessName, Id | Format-Table -AutoSize

Stop-Process -Name mspaint

Stop-Process -Id 28344

Get-Service -Name wuauserv

Get-Service -Name Spooler

Stop-Service -Name Spooler