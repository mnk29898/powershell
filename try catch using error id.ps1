Cls
Write-Host "Try catch finally in powershell" -ForegroundColor Yellow
Try
{
Get-Service -ComputerName test01|Where-Object{$_. Status -eq "running"}
Get-Process chrome|Format-Table
Throw
Get-EventLog -LogName Application -Newest 5|Format-Table
}
Catch [System.Management.Automation.CommandNotFoundException]
{
Write-Host "There is a speeling mistake"
}
catch [System.InvalidOperationException]
{
Write-Host "unbale to connect to remote computer. Please contact administrator"
}
Catch
{
Write-Host "unknown error"
}
Finally
{
}