# Definiere die benötigten Informationen für den Eventlog-Eintrag
$source = "MeineAnwendung"
$logName = "Application"
$eventID = 1000
$eventType = "Error"
$message = "Ein Beispiel-Eintrag im Eventlog."

if ([System.Diagnostics.EventLog]::SourceExists($source)) {
    Write-Host "Die Quelle '$source' existiert bereits."
} else {
    New-EventLog -LogName $logName -Source $source
    Write-Host "Die Quelle '$source' existiert nicht und wurde angelegt."
}

# Erstelle den Eventlog-Eintrag
Write-EventLog -LogName $logName -Source $source -EventId $eventID -EntryType $eventType -Message $message
Write-Host "Die $message wurde unter $source ins $logName eingetragen."