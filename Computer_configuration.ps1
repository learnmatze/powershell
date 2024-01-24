function Get-ComputerInformation {
    # Computerinformationen abrufen

    Write-Host "******************************"
    Write-Host "*Computerinformation anzeigen*"
    Write-Host "******************************"

    # Informationen über den Computer abrufen
    $computerInfo = Get-ComputerInfo
    # Windows-Version anzeigen
    Write-Host "Windows-Version: $($computerInfo.WindowsVersion)"
    # BIOS Firmware-Typ anzeigen
    Write-Host "BIOS Firmware-Typ: $($computerInfo.BiosFirmwareType)"
    # BIOS Hersteller anzeigen
    Write-Host "BIOS Hersteller: $($computerInfo.BiosManufacturer)"
    # Tastaturlayout anzeigen
    Write-Host "Tastaturlayout: $($computerInfo.KeyboardLayout)"
    # Zeitzone anzeigen
    Write-Host "Zeitzone: $($computerInfo.TimeZone)"
    # HyperVisor-Präsenz anzeigen
    Write-Host "HyperVisor-Präsenz: $($computerInfo.HyperVisorPresent)"
    # Betriebssystem-Produkttyp anzeigen
    Write-Host "Betriebssystem-Produkttyp: $($computerInfo.OsProductType)"
    # Betriebssystem-Status anzeigen
    Write-Host "Betriebssystem-Status: $($computerInfo.OsStatus)"
    # Betriebssystem-Installationsdatum anzeigen
    Write-Host "Betriebssystem-Installationsdatum: $($computerInfo.OsInstallDate)"
    # Betriebssystem-Paging-Dateien anzeigen
    Write-Host "Betriebssystem-Paging-Dateien: $($computerInfo.OsPagingFiles)"
    # Betriebssystemname anzeigen
    Write-Host "Betriebssystemname: $($computerInfo.OsName)"
    # Betriebssystem-Version anzeigen
    Write-Host "Betriebssystem-Version: $($computerInfo.OsVersion)"
    # Betriebssystem-Sprache anzeigen
    Write-Host "Betriebssystem-Sprache: $($computerInfo.OsLanguage)"
    # Betriebssystem-Architektur anzeigen
    Write-Host "Betriebssystem-Architektur: $($computerInfo.OsArchitecture)"
    # Anzahl der Prozesse im Betriebssystem anzeigen
    Write-Host "Anzahl der Prozesse im Betriebssystem: $($computerInfo.OsNumberOfProcesses)"
    # Arbeitsgruppe anzeigen
    Write-Host "Arbeitsgruppe: $($computerInfo.CsWorkgroup)"

}

Get-ComputerInformation

Write-Host "******************************"
Write-Host "*Computerinformation anzeigen*"
Write-Host "******************************"

# Informationen über den Computer abrufen
$computerInfo = Get-ComputerInfo
# Windows-Version anzeigen
Write-Host "Windows-Version: $($computerInfo.WindowsVersion)"
# BIOS Firmware-Typ anzeigen
Write-Host "BIOS Firmware-Typ: $($computerInfo.BiosFirmwareType)"
# BIOS Hersteller anzeigen
Write-Host "BIOS Hersteller: $($computerInfo.BiosManufacturer)"
# Tastaturlayout anzeigen
Write-Host "Tastaturlayout: $($computerInfo.KeyboardLayout)"
# Zeitzone anzeigen
Write-Host "Zeitzone: $($computerInfo.TimeZone)"
# HyperVisor-Präsenz anzeigen
Write-Host "HyperVisor-Präsenz: $($computerInfo.HyperVisorPresent)"
# Betriebssystem-Produkttyp anzeigen
Write-Host "Betriebssystem-Produkttyp: $($computerInfo.OsProductType)"
# Betriebssystem-Status anzeigen
Write-Host "Betriebssystem-Status: $($computerInfo.OsStatus)"
# Betriebssystem-Installationsdatum anzeigen
Write-Host "Betriebssystem-Installationsdatum: $($computerInfo.OsInstallDate)"
# Betriebssystem-Paging-Dateien anzeigen
Write-Host "Betriebssystem-Paging-Dateien: $($computerInfo.OsPagingFiles)"
# Betriebssystemname anzeigen
Write-Host "Betriebssystemname: $($computerInfo.OsName)"
# Betriebssystem-Version anzeigen
Write-Host "Betriebssystem-Version: $($computerInfo.OsVersion)"
# Betriebssystem-Sprache anzeigen
Write-Host "Betriebssystem-Sprache: $($computerInfo.OsLanguage)"
# Betriebssystem-Architektur anzeigen
Write-Host "Betriebssystem-Architektur: $($computerInfo.OsArchitecture)"
# Anzahl der Prozesse im Betriebssystem anzeigen
Write-Host "Anzahl der Prozesse im Betriebssystem: $($computerInfo.OsNumberOfProcesses)"
# Arbeitsgruppe anzeigen
Write-Host "Arbeitsgruppe: $($computerInfo.CsWorkgroup)"