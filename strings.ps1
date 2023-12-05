$name = Read-Host "Was ist dein Name?"

#$bezeichnung = Read-Host "Gib mir deine Bezeichnung ein"

#$euro = 20

#$satz = "Hallo, dein Name ist " + $name + " !"

#$satz = "Hallo, dein Name ist $name ich besitze $($euro)Euro!"

$satz = "Hallo, dein Name ist $name !" #.Replace("Name", $bezeichnung + "-dynamisch")

#$satz = "Hallo, dein $bezeichnung ist $name !"

Write-Host $satz.Length

Write-Host "Der Satz $satz hat $($satz.Length) Zeichen"

$vorname = "John"

$nachname = "Doe"

$vollername = $vorname + " " + $nachname

Write-Host "Mein vollständiger Name ist: $vollername"

$text = "Das ist mein Beispieltext"

$length = $text.Length

Write-Host "Mein Text ($text) ist $length Zeichen lang"

# Zeichenketten zerlegen

$text = "Apfel,Birne,Orange,Banane,Kokusnuss"

$früchte = $text.Split(",")

#$teiltext = $text.Substring(6,5)

$counter = 1

foreach($frucht in $früchte) {
    Write-Host "$counter. Frucht: $frucht"
    $counter++
}

# Klein und Großbuchstaben umwandeln

$text = "Powershell ist Super!"

$klein = $text.ToLower()

$groß = $text.ToUpper()

Write-Host $text

Write-Host $klein

Write-Host $groß