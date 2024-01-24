function Get-NetworkInfo {
    
    Write-Host "***************************************"
    Write-Host "*Netzwerkadapterinformationen anzeigen*"
    Write-Host "***************************************"

    # Netzwerkadapterinformationen abrufen
    $networkAdapters = Get-NetAdapter

    Write-Host "=== Netzwerkadapterinformationen ==="
    foreach ($adapter in $networkAdapters) {
        Write-Host "Adapter Name: $($adapter.Name)"
        Write-Host "   Status: $($adapter.Status)"
        Write-Host "   MAC-Adresse: $($adapter.MacAddress)"
        Write-Host "   Geschwindigkeit (Mbps): $($adapter.LinkSpeed)"
        Write-Host "   IPv4-Adresse: $($adapter.IPv4Address.IPAddress)"
        Write-Host "   Subnetzmaske: $($adapter.IPv4Address.SubnetMask)"
        Write-Host "   Standardgateway: $($adapter.IPv4DefaultGateway.NextHop)"
        Write-Host "   IPv6-Adresse: $($adapter.IPv6Address.IPAddress)"
        Write-Host "   IPv6-Präfixlänge: $($adapter.IPv6Address.PrefixLength)"
        Write-Host "   IPv6-Standardgateway: $($adapter.IPv6DefaultGateway.NextHop)"
        Write-Host ""
    }

    # Netzwerkschnittstellenkonfiguration abrufen
    $networkConfiguration = Get-NetIPConfiguration

    Write-Host "=== Netzwerkschnittstellenkonfiguration ==="
    foreach ($config in $networkConfiguration) {
        Write-Host "InterfaceAlias: $($config.InterfaceAlias)"
        Write-Host "   IPv4-Adresse: $($config.IPv4Address.IPAddress)"
        Write-Host "   Subnetzmaske: $($config.IPv4Address.SubnetMask)"
        Write-Host "   Standardgateway: $($config.IPv4DefaultGateway.NextHop)"
        Write-Host "   DNS-Server: $($config.DNSServer.ServerAddresses)"
        Write-Host "   IPv6-Adresse: $($config.IPv6Address.IPAddress)"
        Write-Host "   IPv6-Präfixlänge: $($config.IPv6Address.PrefixLength)"
        Write-Host "   IPv6-Standardgateway: $($config.IPv6DefaultGateway.NextHop)"
        Write-Host ""
    }

    # Alle IP-Adressen abrufen
    $ipAddresses = Get-NetIPAddress

    # Informationen anzeigen
    foreach ($ipAddress in $ipAddresses) {
        Write-Host "IPAddress: $($ipAddress.IPAddress)"
        Write-Host "InterfaceAlias: $($ipAddress.InterfaceAlias)"
        Write-Host "InterfaceIndex: $($ipAddress.InterfaceIndex)"
        Write-Host "InterfaceDescription: $($ipAddress.InterfaceDescription)"
        Write-Host "PrefixLength: $($ipAddress.PrefixLength)"
        Write-Host "Type: $($ipAddress.Type)"
        Write-Host "SkipAsSource: $($ipAddress.SkipAsSource)"
        Write-Host "PolicyStore: $($ipAddress.PolicyStore)"
        Write-Host "Store: $($ipAddress.Store)"
        Write-Host ""
    }
}

# Die Funktion aufrufen
Get-NetworkInfo
