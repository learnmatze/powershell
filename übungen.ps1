<# 
    ***************
    Basic Commandos 
    ***************
#>

# Lies alle Prozesse aus

Get-Process

# Write-Host "Hallo Welt"

$verzeichnis = Read-Host "Verzeichnis Eingeben"

Get-ChildItem -Path C:\Temp # $verzeichnis

Set-Location  C:\Temp 

Copy-Item -Path 'C:\Temp\test.txt' -Destination 'C:\TempNeu'

Get-Process

Get-Process -Name mspaint

Stop-Process -Name mspaint

<# 
    *******************
    Get-Help verwendung
    ******************* 
#>

Get-Help Get-Process

Get-Help Get-NetAdapterBinding

Get-Help Get-Process -Parameter Name

Get-Help Get-Item -Full

Get-Item .

Get-Help Get-Process -Online

<# 
    **********************
    Variablen beschreibung 
    **********************
#>

$meineZeichenkette = "Das ist eine Zeichenkette"
$meineZeichenkette = 20
$meineZweiteZeichenkette = "Das ist meine Zweite Zeichenkette"

write-Host "Das ist meine Varible ($meineZeichenkette)"

$meineKombinierteZeichenkette = [string]$meineZeichenkette + "_" + $meineZweiteZeichenkette

Write-Host $meineKombinierteZeichenkette

$meineErsteZahl = 12
$meineZweiteZahl = 8

$meineSumme = $meineErsteZahl + $meineZweiteZahl
$meineDifferenz = $meineErsteZahl - $meineZweiteZahl
$meinProdukt = $meineErsteZahl * $meineZweiteZahl
$meinQuotient = $meineErsteZahl / $meineZweiteZahl

Write-Host $meineSumme, $meineDifferenz, $meinProdukt, $meinQuotient

$meinErstesBoolean = $true # 1, True
$meinZweitesBoolean = $false # 0, False

Write-Host $meinErstesBoolean, $meinZweitesBoolean

Write-Host "Eins`nZwei`nDrei" # `n

$Name = $true 
# $Name = 10 
# $Name = "Mathias"

Write-Host "Hallo, $Name"

$text = "012345678"

# Write-Host $text.Replace("mein", "dein")

# Write-Host $text.Remove(1, 2)

Write-Host $text

# Write-Host $text.Trim()

Write-Host $text.Substring(0, $text.Length - 3)

