Cls
Write-Host "Working with Windows Operations :" -ForegroundColor Green `n `n
Write-Host " choice : 1.services
2.process
3.EventLog
4.HotFix"
$chc= Read-Host "enter your choice"
Function Export
{
$result|Export-Csv Test123.csv
}
if(!$chc)
{

Write-Host "its empty"

}
else
{


if($chc -gt 4)
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


$result=Get-Service|Where-Object{$_. Status -eq "$status" -and $_. DisplayName -like "$disname"}|Select-Object Status,DisplayName,StartType
$result|Format-Table Status,DisplayName,StartType
($result).count
$yn=Read-Host "Do you want to export the output"
if($yn -eq "Yes")
{
Export
Write-Host "File Exported. Please Check it"
}
else
{
Write-Host "File not Exported"
}


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


$result=Get-Process|Where-Object{$_. Handles -gt $lowlog -and $_. Handles -lt $highlog}
$result|Sort-Object Handles|Format-Table Handles,Name
$result.Count
Export

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


$result=Get-EventLog -LogName $lognm| Where-Object{$_.TimeGenerated -gt $strttime -and $_.TimeGenerated -lt $endtime}
$result
$result.Count
Export

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


$result=Get-HotFix|Where-Object{$_. Description -like "$search"}
$result
$result.Count
Export

}

}

}