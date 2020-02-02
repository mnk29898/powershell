Cls
Write-Host "Try catch finally in powershell" -ForegroundColor Yellow
Try
{
Get-Services|Where-Object{$_. Status -eq "running"}
Get-Process chrome|Format-Table
Get-EventLog -LogName Application -Newest 5 | Format-Table
}
Catch
{
Write-Host "There is a speeling mistake"
}
Finally
{
Write-Host "End of script"
}