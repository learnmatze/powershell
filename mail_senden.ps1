# SMTP-Server-Einstellungen (ersetze die Platzhalter durch die tatsächlichen Informationen)
$smtpServer = "smtp.dein-smtp-server.com"
$smtpFrom = "deine-email@domain.com"
$smtpTo = "empfaenger@email.com"
$messageSubject = "Test-E-Mail"
$messageBody = "Dies ist eine Test-E-Mail von PowerShell."

# E-Mail senden
Send-MailMessage -SmtpServer $smtpServer -From $smtpFrom -To $smtpTo -Subject $messageSubject -Body $messageBody -BodyAsHtml -Priority High
