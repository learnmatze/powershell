# Ereignisprotokollname und Ereignis-ID, das überwacht werden soll
$logName = "Application"
$eventID = 1000

while ($true) {
    # Ereignisse im Protokoll überprüfen
    $neuesEreignis = Get-WinEvent -LogName $logName -MaxEvents 1 | Where-Object { $_.Id -eq $eventID }

    if ($neuesEreignis) {
        Write-Host "Ereignis mit der ID $eventID im Protokoll $logName gefunden!"

        # Hier kannst du zusätzliche Aktionen hinzufügen, z.B. eine E-Mail senden oder ein anderes Skript ausführen

        # Beispiel: E-Mail senden (erfordert Konfiguration von SMTP-Daten)
        # Send-MailMessage -To "empfaenger@example.com" -From "absender@example.com" -Subject "Ereignis $eventID gefunden" -Body "Ein Ereignis mit der ID $eventID wurde im Protokoll $logName gefunden!"

        # Beispiel: Anderes Skript ausführen
        # Start-Process -FilePath "C:\Pfad\zu\Deinem\Anderen\Skript.ps1"
    }

    # Warte für eine gewisse Zeit, bevor der nächste Überprüfungszyklus startet (in diesem Fall 5 Minuten)
    Start-Sleep -Seconds 10
}
