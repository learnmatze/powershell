
$hello_world = "Hello World"
$hello_world | Get-Member
$hello_world = 12
$hello_world
$hello_world | Get-Member

# Text in Variablen

$hello_world = "Hello new World"
Write-Host $hello_world

Write-Host "Hallo das ist die $hello_world"

$name = Read-Host "Wie lautet dein Name?"

$alter = Read-Host "Wie alt bist du?"

Write-Host "Der Benutzer $name, ist $alter Jahre Alt"

#Zahlen in Variablen

$zahl1 = 10

$zahl2 = 20

Write-Host "Zahl1: $zahl1, Zahl2: $zahl2"

$summe = $zahl1 + $zahl2

Write-Host "$zahl1 + $zahl2 = $summe"

[int]$zahl1 = Read-Host "Bitte geben sie die erste Zahl ein."

[int]$zahl2 = Read-Host "Bitte geben sie die zweite Zahl ein."

$summe = $zahl1 + $zahl2

Write-Host "$zahl1 + $zahl2 = $summe"

$differenz = $zahl1 - $zahl2

Write-Host "$zahl1 - $zahl2 = $differenz"

# Text in Variablen

$vorname = Read-Host "Bitte geben sie ihren Vornamen ein."

$nachname = Read-Host "Bitte geben sie ihren Nachnamen ein."

Write-Host "Ihr voller Name lautet $vorname $nachname."

# Object als Variable

Get-Process

$process_name = Read-Host "Geben sie ein welchen Process sie untersuchen wollen."

$process = Get-Process | Where-Object { $_.Name -eq $process_name }

Write-Host "Name des Prozesses: $($process.Name)"

Write-Host "CPU nutzung des Prozesses: $($process.CPU)"

Write-Host "Speicher nutzung des Prozesses: $($process.WorkingSet)"

Write-Host "Start Time des Prozesses: $($process.StartTime)"


# Arrays als Variable

$viele_zahlen = 1, 2, 3, 4, 5

$viele_texte = "eins", "zwei", "drei"

$viele_zahlen

$viele_texte

foreach($zahl in $viele_zahlen) {
    Write-Host "Zahl: $zahl"
}

foreach($text in $viele_texte) {
    Write-Host "Text: $text"
}



$viele_zahlen = $viele_zahlen + 88

$viele_zahlen

foreach($zahl in $viele_zahlen) {
    Write-Host "Zahl: $zahl"
}

$viele_zahlen = 12, 8, 3, 1, 9

$viele_zahlen = $viele_zahlen | Where-Object { $_ -ne 9 }


$process_names = "mspaint", "dns"

$processes = Get-Process | Where-Object { $_.Name -in $process_names }

$processes | foreach { Write-Host "Name des Prozesses: $($_.Name), CPU nutzung des Prozesses: $($_.CPU)" } 









$viele_farben = "rot", "grün", "blau"

foreach($farbe in $viele_farben) {
    Write-Host "Farbe: $farbe"
}