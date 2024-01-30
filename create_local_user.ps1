
<# 
    ******************************************************
    Script mit parametern um lokalen Benutzer zu erstellen
    ******************************************************
#>

param(
    [string]$BenutzerName,
    [string]$Description,
    [string]$Fullname,
    [string]$Password
)

#"12AndiManfred34!"

$secure_password = ConvertTo-SecureString $Password -AsPlainText -Force -Verbose

New-LocalUser -Name $BenutzerName -FullName $Fullname -Description $Description -Password $secure_password -Verbose

# Password $secure_password

# net user $Name /logonpasswordchg:yes

Write-Host "Benutzer, $Name mit $Fullname und Beschreibung $Description wurde erstellt."