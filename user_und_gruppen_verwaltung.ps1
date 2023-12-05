Get-LocalUser

$password = ConvertTo-SecureString "12AndiManfred34!" -AsPlainText -Force
#$password = Read-Host -AsSecureString
New-LocalUser -Name "franzh" -Password $password -FullName "Franz Huber" 
-PasswordNeverExpires:$false -UserMayNotChangePassword:$false -Description "Benutzer des Windows Servers 2022 Computers"

# benutzer zur lokalen Gruppe hinzufügen
Add-LocalGroupMember -Group "Benutzer" -Member "franzh" 
Add-LocalGroupMember -Group "RemoteDesktopBenutzer" -Member "franzh"

# erstellen von Benutzern und zuweisen von Gruppen zu Benutzern und aktivieren und deaktivieren von Benutzern

Get-LocalUser

Get-LocalUser -Name 'Gast'

Get-LocalUser -Name '*m*'

New-LocalUser 'PowershellUser' -FullName 'Powershell User' -Description 'Das ist der powershell user' -NoPassword

Add-LocalGroupMember -Group 'Benutzer' -Member 'PowershellUser'

$password = ConvertTo-SecureString "12AndiManfred34!" -AsPlainText -Force
#$password = Read-Host -AsSecureString

New-LocalUser 'UserDisabled' -Password $password  -FullName 'Disabled User' -Disabled -Description 'Disabled User'

Remove-LocalUser 'UserWithPwd'

$localUser = Get-LocalUser 'UserDisabled'

Enable-LocalUser -Name 'UserDisabled'

Disable-LocalUser -Name 'UserDisabled'

# Auslesen von lokalen Gruppen

Get-LocalGroup

Get-LocalGroup -Name 'Z*'

New-LocalGroup -Name 'Präperatoren' -Description 'Präperieren Tiere'

New-LocalGroup -Name 'SäugetierPräperatoren' -Description 'Präperieren Säugetiere "(Maus, Kamel)" '

New-LocalGroup -Name 'InsektenPräperatoren' -Description 'Präperieren Insekten "(Schmetterlinge)" '

Get-LocalGroup -Name '*Präperatoren*'

Get-LocalGroupMember -Group 'Präperatoren'

Get-LocalUser

Add-LocalGroupMember -Group 'Präperatoren' -Member 'LocalUser'

Add-LocalGroupMember -Group 'Präperatoren' -Member 'PowershellUser'

Remove-LocalGroupMember -Group 'Präperatoren' -Member 'PowershellUser'

# auslesen von installations log von der Windows Server 2022 Installation

C:\Windows\Panther\setupact, C:\Windows\Panther\setuperr -> Installationslog Files

# Setup Logs nach Fehler untersuche

Get-ChildItem -Path C:\Windows\Panther -Recurse | Select-String 'First boot' | Select-Object -Last 1

Get-ChildItem -Path C:\Windows\Panther -Recurse | Select-String 'Warning' | Select-Object -First 2

# Lies Information aus dem EventLog (Ereignisanzeige) aus


Get-EventLog -LogName Application -EntryType Error -Source MeinPythonScript | Format-Table -AutoSize -Wrap

Get-EventLog -LogName System -EntryType Error # -Source MeinPythonScript | Format-Table -AutoSize -Wrap

Write-EventLog -LogName System -Source "EventLog" -EventId 100 -EntryType Error -Message "System Error ist aufgetreten" #-Source "EventLog"

# Starten von Prozessen

Start-Process mspaint -WindowStyle Normal

Start-Process notepad -WindowStyle Normal

Get-Process msedge

Stop-Process -Name "mspaint" -Force

Stop-Process -Id 9252

Start-Process mspain

Start-Sleep 60

Stop-Process -Name "mspaint"

Stop-Process -Name msedge

Start-Process https://www.google.at

# Services (Dienste)

Get-Service -Name A*

Get-Service -Name Spooler

Get-Service | Where-Object Status -EQ "Running" | Where-Object Name -Like "A*"

Get-Service | Where-Object Status -EQ "Stopped" | Where-Object Name -Like "A*"

Stop-Service Spooler

Start-Service Spooler


Get-EventLog -LogName System -EntryType Warning

Start-Process notepad -WindowStyle Maximized

Write-EventLog -LogName Application -Source "VSS" -EventId 10 -EntryType Information -Message "notpad.exe wurde gestartet" #-Source "EventLog"










