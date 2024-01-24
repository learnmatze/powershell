# Remote-Server-Konfiguration
$remoteServer = "DEIN_REMOTE_SERVER"
$remoteCredential = Get-Credential  # Fordert Benutzernamen und Kennwort für die Remote-Verbindung an

# Funktion zum Überwachen und Aktionen durchführen
function Überwache-Und-Führe-Aktion-Aus {
    param (
        [string]$server,
        [string]$service,
        [string]$action
    )

    # Überwache den Dienststatus
    $status = Invoke-Command -ComputerName $server -Credential $remoteCredential -ScriptBlock {
        param($serviceName)
        Get-Service -Name $serviceName | Select-Object Status
    } -ArgumentList $service

    Write-Host "Dienst $service auf Server $server hat den Status: $($status.Status)"

    # Führe Aktion basierend auf dem Dienststatus aus
    if ($action -eq "start" -and $status.Status -eq "Stopped") {
        Write-Host "Starte den Dienst $service auf Server $server."
        Invoke-Command -ComputerName $server -Credential $remoteCredential -ScriptBlock {
            param($serviceName)
            Start-Service -Name $serviceName
        } -ArgumentList $service
    }
    elseif ($action -eq "stop" -and $status.Status -eq "Running") {
        Write-Host "Stoppe den Dienst $service auf Server $server."
        Invoke-Command -ComputerName $server -Credential $remoteCredential -ScriptBlock {
            param($serviceName)
            Stop-Service -Name $serviceName
        } -ArgumentList $service
    }
    else {
        Write-Host "Keine Aktion erforderlich."
    }
}

# Beispielaufrufe der Funktion
Überwache-Und-Führe-Aktion-Aus -server $remoteServer -service "wuauserv" -action "stop"
Überwache-Und-Führe-Aktion-Aus -server $remoteServer -service "wuauserv" -action "start"
