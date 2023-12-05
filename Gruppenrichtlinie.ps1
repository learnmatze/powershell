# Definieren Sie den Pfad zur Bilddatei, die als Hintergrundbild festgelegt werden soll 

#$ImagePath = "C:\Pfad\zum\Hintergrundbild.jpg"
 
$ImagePath = "\\dc01\Finanz\finanz2.jpg"

$ImagePath = "\\dc01\Finanz\marketing2.png"

#$ImagePath = "\\dc01\Finanz\development.jpg"

#$ImagePath = "\\dc01\Finanz\vertrieb.jpg"

# Erstellen Sie eine neue Gruppenrichtlinie 

$GPOName = "Hintergrundbild-finanz-GPO" 

#$GPOName = "Hintergrundbild-marketing-GPO" 

#$GPOName = "Hintergrundbild-development-GPO" 

#$GPOName = "Hintergrundbild-vertrieb-GPO" 

New-GPO -Name $GPOName 

# Erhalten Sie das Gruppenrichtlinienobjekt (GPO) 

$GPO = Get-GPO -Name $GPOName 

# Definieren Sie die Einstellungen für das Hintergrundbild 

$RegistryPath = "HKCU\Control Panel\Desktop" 

$RegistryName = "WallpaperStyle" 

$RegistryValue = "2" # 2 steht für "Strecken" als Hintergrundbildstil 

# Fügen Sie die Einstellungen zur Gruppenrichtlinie hinzu 

Set-GPRegistryValue -Name $GPOName -Key $RegistryPath -ValueName $RegistryName -Type String -Value $RegistryValue 

Set-GPRegistryValue -Name $GPOName -Key "HKCU\Control Panel\Desktop" -ValueName "Wallpaper" -Type String -Value $ImagePath 

# Verknüpfen Sie die Gruppenrichtlinie mit einer Organisationseinheit (OU) 

$OUName = "OU=Finanzen,DC=schoberm,DC=local" 

#$OUName = "OU=Marketing,DC=schoberm,DC=local" 

#$OUName = "OU=Development,DC=schoberm,DC=local" 

#$OUName = "OU=Vertrieb,DC=schoberm,DC=local" 

New-GPLink -Name $GPOName -Target $OUName 

# Aktualisieren Sie die Gruppenrichtlinien auf den Zielcomputern 

gpupdate /force 


$ImagePath = "\\dc01\Finanz\development.jpg"

$GPOName = "Hintergrundbild-development-GPO" 

New-GPO -Name $GPOName 

$GPO = Get-GPO -Name $GPOName 

$RegistryPath = "HKCU\Control Panel\Desktop" 

$RegistryName = "WallpaperStyle" 

$RegistryValue = "2" # 2 steht für "Strecken" als Hintergrundbildstil 

# Fügen Sie die Einstellungen zur Gruppenrichtlinie hinzu 

Set-GPRegistryValue -Name $GPOName -Key $RegistryPath -ValueName $RegistryName -Type String -Value $RegistryValue 

Set-GPRegistryValue -Name $GPOName -Key "HKCU\Control Panel\Desktop" -ValueName "Wallpaper" -Type String -Value $ImagePath 

$OUName = "OU=Development,DC=schoberm,DC=local" 

New-GPLink -Name $GPOName -Target $OUName 


$ImagePath = "\\dc01\Finanz\marketing2.png"

$GPOName = "Hintergrundbild-marketing-GPO"

New-GPO -Name $GPOName 

# Erhalten Sie das Gruppenrichtlinienobjekt (GPO) 

$GPO = Get-GPO -Name $GPOName 

# Definieren Sie die Einstellungen für das Hintergrundbild 

$RegistryPath = "HKCU\Control Panel\Desktop" 

$RegistryName = "WallpaperStyle" 

$RegistryValue = "2" # 2 steht für "Strecken" als Hintergrundbildstil 

# Fügen Sie die Einstellungen zur Gruppenrichtlinie hinzu 

Set-GPRegistryValue -Name $GPOName -Key $RegistryPath -ValueName $RegistryName -Type String -Value $RegistryValue 

Set-GPRegistryValue -Name $GPOName -Key "HKCU\Control Panel\Desktop" -ValueName "Wallpaper" -Type String -Value $ImagePath  

