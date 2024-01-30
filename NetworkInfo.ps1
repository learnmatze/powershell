<# 
    *******************************
    Netzwerk Informationen auslesen
    *******************************
#>

# Netzwerk Informationen

$ipaddresses = Get-NetIPAddress

# Write-Host $ipaddresses

$ipaddresses | ForEach-Object {
    Write-Host "Name: $($_.Address)"
    Write-Host "AddressFamily: $($_.AddressFamily)"
    Write-Host "IPAddress: $($_.IPAddress)"
    Write-Host "IPv4Address: $($_.IPv4Address)"
    Write-Host "IPv6Address: $($_.IPv6Address)"
    Write-Host "Status: $($_.Status)"
}

$netzwerkadapter = Get-NetAdapter

#Write-host $netzwerkadapter

$netzwerkadapter | ForEach-Object {
    Write-Host "Name: $($_.Name)"
    Write-Host "Status: $($_.Status)"
    Write-Host "Caption: $($_.Caption)"
    Write-Host "Description: $($_.Description)"
    Write-Host "Device-Name: $($_.DeviceName)"
    Write-Host "MacAddress: $($_.MacAddress)"   
}

# Netzwerkinformationen abrufen
$networkInfo = Get-NetIPConfiguration

# Hostname
$hostname = $env:COMPUTERNAME

# IP-Adresse
$ipAddress = $networkInfo.IPv4Address.IPAddress

# Subnetzmaske
$subnetMask = $networkInfo.IPv4Address.PrefixLength

# Standardgateway
$defaultGateway = $networkInfo.IPv4DefaultGateway.NextHop

# DNS-Server
$dnsServers = (Get-DnsClientServerAddress | Where-Object { $_.InterfaceAlias -eq $networkInfo.InterfaceAlias }).ServerAddresses

# Anzeige der Informationen
Write-Host "Hostname: $hostname"
Write-Host "IP-Adresse: $ipAddress"
Write-Host "Subnetzmaske: $subnetMask"
Write-Host "Standardgateway: $defaultGateway"
Write-Host "DNS-Server: $($dnsServers -join ', ')"


# Netzwerkinformationen für alle Schnittstellen abrufen
$networkInterfaces = Get-NetAdapter | Where-Object { $_.Status -eq 'Up' }

foreach ($interface in $networkInterfaces) {
    # Netzwerkinformationen abrufen
    $networkInfo = Get-NetIPConfiguration -InterfaceAlias $interface.InterfaceAlias

    # Hostname
    $hostname = $env:COMPUTERNAME

    # IP-Adresse
    $ipAddress = $networkInfo.IPv4Address.IPAddress

    # Subnetzmaske
    $subnetMask = $networkInfo.IPv4Address.PrefixLength

    # Standardgateway
    $defaultGateway = $networkInfo.IPv4DefaultGateway.NextHop

    # DNS-Server
    $dnsServers = (Get-DnsClientServerAddress -InterfaceAlias $interface.InterfaceAlias).ServerAddresses

    # Anzeige der Informationen
    Write-Host "Schnittstelle: $($interface.InterfaceAlias)"
    Write-Host "Hostname: $hostname"
    Write-Host "IP-Adresse: $ipAddress"
    Write-Host "Subnetzmaske: $subnetMask"
    Write-Host "Standardgateway: $defaultGateway"
    Write-Host "DNS-Server: $($dnsServers -join ', ')"
    Write-Host "------------------------"
}

# Netzwerkinformationen für alle Schnittstellen abrufen
$networkInterfaces = Get-NetAdapter | Where-Object { $_.Status -eq 'Up' }

foreach ($interface in $networkInterfaces) {
    # Netzwerkinformationen abrufen
    $networkInfo = Get-NetIPAddress -InterfaceAlias $interface.InterfaceAlias -AddressFamily IPv6

    if ($networkInfo) {
        # Hostname
        $hostname = $env:COMPUTERNAME

        # IPv6-Adresse
        $ipv6Address = $networkInfo.IPAddress

        # Subnetzpräfixlänge
        $prefixLength = $networkInfo.PrefixLength

        # Anzeige der Informationen
        Write-Host "Schnittstelle: $($interface.InterfaceAlias)"
        Write-Host "Hostname: $hostname"
        Write-Host "IPv6-Adresse: $ipv6Address"
        Write-Host "Subnetzpräfixlänge: $prefixLength"
        Write-Host "------------------------"
    }
    else {
        Write-Host "Keine IPv6-Adresse für Schnittstelle $($interface.InterfaceAlias) gefunden."
    }
}

