# Service als Object

Get-Service wuauserv | Select-Object -Property *

Stop-Service wuauserv

Start-Service wuauserv

# Datei als Object

$datei = Get-Item -Path "C:\Users\Administrator\Documents\Personen.txt"

Write-Host "Dateiname: $($datei.Name)"

Write-Host "Erweiterung: $($datei.Extension)"

Write-Host "Größe: $($datei.Length)"

# Benutzer als Object

$benutzer = Get-LocalUser -Name 'zugriff'

Write-Host "Benutzername: $($benutzer.Name)"

Write-Host "Beschreibung: $($benutzer.Description)"

Write-Host "Ist der Benutzer aktiviert: $($benutzer.Enabled)"

# Prozess als Object

$process = Get-Process -Name notepad

Write-Host "Der Process $($process.Name) mit der Beschreibung 
$($process.Description) wurde von der Firma $($process.Company) erstellt"

$process.Description

$process.Company

Get-Process | Sort-Object -Property CPU -Descending 
| Select-Object -First 3 | Format-Table CPU, ProcessName

# Betriebssystem als Object

$betriebssystem = Get-WmiObject -Class Win32_OperatingSystem

$installDate = 
[System.Management.ManagementDateTimeConverter]::ToDateTime($betriebssystem.InstallDate)

Write-Host "Mein Betriebssystem ist $($betriebssystem.Caption)"

Write-Host "Mein Betriebssystem wurde installiert am $($installDate)"

Write-Host "Auf meinem Betriebssystem $($betriebssystem.Caption) sind 
$($betriebssystem.FreePhysicalMemory) Bytes Speicher Frei."

Write-Host "Mein Betriebssystem $($betriebssystem.Caption) hat den Hostnamen 
$($betriebssystem.PSComputerName)."

# Netzwerkadapter als Object

Get-NetAdapter | ForEach-Object {     
    Write-Host "Name: $($_.Name)"
    Write-Host "Status: $($_.Status)"
    Write-Host "InterfaceDescription: $($_.InterfaceDescription)"
    Write-Host "Speed: $($_.Speed)"
    Write-Host "MacAddress: $($_.MacAddress)"

    $ipaddress = $_ | Get-NetIPAddress 
    $ipv4 = $ipaddress | Where-Object { $_.AddressFamily -eq "IPv4" }
    $ipv6 = $ipaddress | Where-Object { $_.AddressFamily -eq "IPv6" }
    Write-Host "IP-v4-Address: $($ipv4.IPAddress)"
    Write-Host "IP-v6-Address: $($ipv6.IPAddress)"
}
    # Write-Host "Status: $($_.Status)" 
    # Write-Host "InterfaceDescription: $($_.InterfaceDescription  )"
    # Write-Host "Speed: $($_.Speed)"
    # Write-Host "MacAddress: $($_.MacAddress)"    

    # $ipaddress = $_ | Get-NetIPAddress 
    # $ipv4 = $ipaddress | Where-Object { $_.AddressFamily -eq "IPv4" }
    # $ipv6 = $ipaddress | Where-Object { $_.AddressFamily -eq "IPv6" }
    # Write-Host "$($ipv4.IPAddress)"
    # Write-Host "$($ipv6.IPAddress)"

$iprange = 1..100

$foundDevices = @()

foreach($ip in $iprange) {
    #$ipaddress = "192.168.1.$ip"
    $ipaddress = "10.15.1.$ip"

    $result = Test-Connection -ComputerName $ipaddress -Count 1 -ErrorAction SilentlyContinue
    # Write-Host "Test $($ipaddress) for $($result)"

    if($result) {
        $resolvedName = Resolve-DnsName $ipaddress
        $Hostname = $resolvedName.NameHost         
        $substring = "204"
        if($Hostname.Contains($substring)) {
            Write-Host $Hostname
            $deviceInfo = [PSCustomObject]@{ 
                IPAddress = $ipaddress
                RestponseTime = $result.ResponseTime
                Hostname = $resolvedName.NameHost
                }
            $foundDevices = $foundDevices + $deviceInfo
        }
        #$deviceInfo = [PSCustomObject]@{ 
        #    IPAddress = $ipaddress
        #    RestponseTime = $result.ResponseTime
        #    Hostname = $resolvedName.NameHost
        #}
        #$foundDevices = $foundDevices + $deviceInfo
    }
}

$foundDevices | Format-Table -AutoSize




