Get-Process | Where-Object -Property mainWindowTitle

Get-Process | Where-Object -Property Name

Get-Process # | Where-Object { $_.Name -like 'msedge' } # | Format-Table Name, Id -AutoSize


# filtern von Pfaden

Get-ChildItem -Path "C:\Users\Administrator\Documents" | Where-Object { $_.Extension -eq ".txt" }

Get-ChildItem -Path "C:\Users\Administrator\Documents" | Where-Object { $_.Extension -eq ".log" }

Get-ChildItem -Path "C:\Users\Administrator\Documents" | Where-Object { $_.Name -eq "text2.log" }

# import aus csv datei (Personen.txt)

Import-Csv -Path "C:\Users\Administrator\Documents\Personen.txt"

Import-Csv -Path "C:\Users\Administrator\Documents\Personen.txt" 
| Where-Object { $_.Nachname -eq "Lee" } 
| Format-Table Nachname, Alter

Import-Csv -Path "C:\Users\Administrator\Documents\Personen.txt" 
| Where-Object { $_.Vorname -eq "Michael" -and $_.Alter -ge 40 } 
| Format-Table Vorname, Nachname, Alter
#| Where-Object { $_.Alter -eq 40 } 

Import-Csv -Path "C:\Users\Administrator\Documents\Personen.txt" | Where-Object { $_.Alter -gt 29 }

Import-Csv -Path "C:\Users\Administrator\Documents\Personen.txt" | Where-Object { $_.Nachname -eq "Lee" }

Import-Csv -Path "C:\Users\Administrator\Documents\Personen.txt" | Where-Object { $_.Alter -gt 30 }

Import-Csv -Path "C:\Users\Administrator\Documents\Personen.txt" | Where-Object { $_.Ort -eq 'New York' }

#Import-Csv -Path "C:\Users\Administrator\Documents\Personen.txt" | Where-Object { $_.Alter -gt 30 -and $_.Nachname -eq "Lee" }

#Import-Csv -Path "C:\Users\Administrator\Documents\Personen.txt" | Where-Object { $_.Alter -gt text2.log" }

#Prozess sortieren

Get-Process | Where-Object { $_.Name -eq 'mspaint' } | Format-Table Id, ProcessName

Get-Process | Where-Object { $_.Name -eq 'msedge' } | Format-Table Id, Name, WorkingSet -AutoSize

Get-Process | Where-Object { $_.Name -eq 'msedge' -and $_.WorkingSet -gt 30000000 } | Format-Table Id, Name, WorkingSet -AutoSize

Get-Process | Sort-Object -Property WorkingSet -Descending # | Format-Table Name, WorkingSet -AutoSize

Get-Service 
| Where-Object { $_.Name -like "*DH*" } 
| Sort-Object -Property DisplayName 
| Format-Table Name, Status

# Text aus Hunde.txt einlesen

Get-Content -Path "C:\Users\Administrator\Documents\Hunde.txt" -Encoding UTF8 
| Select-String -Pattern "Hund"

select-String -Path "C:\Users\Administrator\Documents\Hunde.txt" -Pattern "Polizeihunde" 
| Out-File -FilePath "C:\Users\Administrator\Documents\Polizehunde.txt"

# Services filtern

Get-Service | Where-Object { $_.Status -eq "Running" -and $_.Name -like '*DHCP*' } 
| Format-Table DisplayName, Status 
| Out-File -FilePath "C:\Users\Administrator\Documents\DHCP_Services.txt"

# Dateien in Verzeichnissen finden

Get-ChildItem -Path "C:\Windows\Panther" | Where-Object { $_.Extension -eq ".log" }

Get-ChildItem -Path "C:\Windows\Panther" 
| Where-Object { $_.LastAccessTime -gt (Get-Date).AddDays(-10) } 
| Format-Table Name, LastWriteTime 
| Out-File -FilePath "C:\Users\Administrator\Documents\Panther_lastAccess.txt"


Get-Service | Where-Object { $_.Status -eq "Stopped" }

Import-Csv -Path "C:\Users\Administrator\Documents\Personen.txt" 
| Where-Object { $_.Ort -eq 'New York' }

Import-Csv -Path "C:\Users\Administrator\Documents\Personen.txt" | Where-Object { $_.Vorname -eq 'Michael' }

Import-Csv -Path "C:\Users\Administrator\Documents\Personen.txt" | Where-Object { $_.Nachname -eq 'Brown' }

Import-Csv -Path "C:\Users\Administrator\Documents\Personen.txt" | Where-Object { $_.Alter -gt 25 }

Import-Csv -Path "C:\Users\Administrator\Documents\Personen.txt" | Where-Object { $_.Alter -gt 29 -and $_.Ort -eq 'New York' }

Import-Csv -Path "C:\Users\Administrator\Documents\Personen.txt" | Where-Object { $_.Ort -eq 'New York' }

Get-ChildItem -Path "C:\Windows" -Recurse | Where-Object { $_.Extension -eq ".txt" }

Get-Content -Path "C:\Users\Administrator\Documents\Hunde.txt" -Encoding UTF8 | Select-String -Pattern "Liebe"

select-String -Path "C:\Users\Administrator\Documents\Hunde.txt" -Pattern "Liebe" 

Get-Process | Sort-Object -Property WorkingSet | Format-Table Name, WorkingSet

#Import-Csv -Path "C:\Users\Administrator\Documents\Personen.txt" | Where-Object { $_.Alter -gt 30 -and $_.Nachname -eq "Lee" }

Get-Service | Where-Object { $_.Status -eq "Running" -and $_.Name -like '*DHCP*' } 
| Format-Table DisplayName, Status 
| Out-File -FilePath "C:\Users\Administrator\Documents\DHCP_Services.txt"






