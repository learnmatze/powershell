
$folderpath = "F:\Vertrieb\Kunden"

$sharename = "Kunden"

$language = (Get-WinSystemLocale).Name

if($language -eq "de-DE") {
    New-SmbShare -Path $folderpath -Name $sharename -FullAccess Jeder
} elseif ($language -eq "en-GB") {
    New-SmbShare -Path $folderpath -Name $sharename -FullAccess Everyone
}

Remove-SmbShare -Name $sharename -Force

# folder und freigabe erstellen

$parent = "F:\"

New-Item -Path (Join-Path -Path $parent -ChildPath "Operations") -ItemType Directory

New-Item -Path (Join-Path -Path $parent -ChildPath "Operations\Intern Operations") -ItemType Directory

$folderpath = "F:\Operations"

$sharename = "Operations"

# file erstellen und text eintragen

Set-Content -Path (Join-Path -Path $parent -ChildPath "Operations\text.txt") -Value "Das ist mein Text"

# freigabe erstellen

New-SmbShare -Path $folderpath -Name $sharename -FullAccess Jeder


# freigabe und folder löschen

Remove-SmbShare -Name $sharename -Force

Remove-Item -Path (Join-Path -Path $parent -ChildPath "Operations") -Force -Recurse




