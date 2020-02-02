cls
Write-Host " choice : 
1.Service
2.Process
3.EventLog
4.HotFix"
$chc=Read-Host("Enter your choice")
if(!$chc)
{
Write-Host "Entered an empty value"
}
else
{
if($chc -gt 4)
{
Write-Host "Enter invalid input"
}
}
if($chc -in 1,2,3,4)
{
if($chc -eq 1)
{

service

}
elseif($chc -eq 2)
{

process

}
elseif($chc -eq 3)
{

eventlog

}
elseif($chc -eq 4)
{

hotfix

}
}

Function service
{
$status1=Read-Host("Enter the status")
$dsname= Read-Host("Enter the displasy name")
Get-Service | Where-Object{$_. Status -eq "$status1" -and $_. DisplayName -like "$dsname"} | Sort-Object DisplayName | ft Status,DisplayName,StartType
}

Function process
{
$low=Read-Host("Enter least handle range no")
$high=Read-Host("Enter highest handle range no")
Get-Process | Where-Object{$_. Handles -gt $low -and $_. Handles -lt $high} | Sort-Object Handles | ft Handles,  Name
}

Function eventlog
{
$lgname=Read-Host("Enter log name")
$gttime=Read-Host("Enter greater than time")
$lthtime=Read-Host("Enter less than time")
Get-EventLog -LogName $lgname | Where-Object{$_.TimeGenerated -gt $gttime -and $_.TimeGenerated -lt $lthtime}
}

Function hotfix
{
$desname=Read-Host("Enter name of description")
Get-HotFix | Where-Object{$_. description -like "$desname"}
}