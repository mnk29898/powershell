Cls
Write-Host "Working with Windows Operations :" -ForegroundColor Green `n `n
do
{


Write-Host " choice : 1.services
2.process
3.EventLog
4.HotFix
5.Exit"
$chc= Read-Host "enter your choice"
if(!$chc)
{

Write-Host "its empty"

}
else
{


if($chc -gt 5)
{

Write-Host "invalid choice"

}
if($chc -eq 1)
{

Write-Host `t `t  `t `t `t `t "Working with Windows Services -:" -ForegroundColor Yellow `n `n
$status= Read-Host "what is the status you want to search ? "
$disname= Read-Host "what is the Displayname you want to search ? "
if(!$status -or !$disname)
{

Write-Host "values provided are empty "

}
else
{


Get-Service|Where-Object{$_. Status -eq "$status" -and $_. DisplayName -like "$disname"}|Sort-Object DisplayName|Format-Table Status,DisplayName,StartType
Write-Host "The count of result is "
(Get-Service|Where-Object{$_. Status -eq "$status" -and $_. DisplayName -like "$disname"}).count


}

}

elseif($chc -eq 2)
{


Write-Host `t `t `t `t `t `t " Working with Process " -ForegroundColor Yellow `n
$lowlog= Read-Host "enter the lower limit of handles"
$highlog= Read-Host "enter the higher limit for handles"
if(!$lowlog -or !$highlog)
{

Write-Host "values provided are empty "

}
else
{


Get-Process|Where-Object{$_. Handles -gt $lowlog -and $_. Handles -lt $highlog}|Sort-Object Handles|Format-Table Handles,Name
Write-Host "The count of result is "
(Get-Process|Where-Object{$_. Handles -gt $lowlog -and $_. Handles -lt $highlog}).count

}

}

elseif($chc -eq 3)
{

Write-Host `t `t `t `t `t `t "Working with Events" -ForegroundColor Yellow
$lognm= Read-Host "what is log container name ? "
$strttime= Read-Host "What is Start time ? "
$endtime= Read-Host "What is end time ? "
if(!$strttime -or !$endtime)
{

Write-Host "values provided are empty "

}
else
{


Get-EventLog -LogName $lognm| Where-Object{$_.TimeGenerated -gt $strttime -and $_.TimeGenerated -lt $endtime}
Write-Host "The result of count is "
(Get-EventLog -LogName $lognm| Where-Object{$_.TimeGenerated -gt $strttime -and $_.TimeGenerated -lt $endtime}).count

}

}

elseif($chc -eq 4)
{


Write-Host `t `t `t `t `t `t "Working with Hotfix" -ForegroundColor Yellow
$search= Read-Host "Enter the description you want to search"
if(!$search)
{

Write-Host "values provided are empty "
}
else
{


Get-HotFix|Where-Object{$_. Description -like "$search"}
Write-Host "The result of count is "
(Get-HotFix|Where-Object{$_. Description -like "$search"}).count

}

}

elseif($chc -eq 5)
{

Write-Host "Script ended"

}

}

Read-Host "press enter to continue"

}
while($chc -ne 5)
#until($chc -eq 5)