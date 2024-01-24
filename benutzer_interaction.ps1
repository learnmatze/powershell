# Benutzereingabe abfragen
$userInput = Read-Host "Gib eine Zahl ein (1 für Aktion 1, 2 für Aktion 2, usw.)"

# Benutzereingabe verarbeiten und Aktionen durchführen
switch ($userInput) {
    1 {
        Write-Host "Du hast die Zahl 1 eingegeben. Aktion 1 wird durchgeführt."
        # Hier kannst du Aktion 1 implementieren, z.B. die Installation von Software oder Konfigurationsänderungen
    }
    2 {
        Write-Host "Du hast die Zahl 2 eingegeben. Aktion 2 wird durchgeführt."
        # Hier kannst du Aktion 2 implementieren
    }
    3 {
        Write-Host "Du hast die Zahl 3 eingegeben. Aktion 3 wird durchgeführt."
        # Hier kannst du Aktion 3 implementieren
    }
    default {
        Write-Host "Ungültige Eingabe. Bitte gib eine gültige Zahl ein."
    }
}
