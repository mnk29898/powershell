Cls
$collection=Import-Csv C:\Users\Administrator\Desktop\cmp1.csv 
foreach($item in $collection)
{
Try
{
write-host $item
write-host $item.Computername
Get-Service -ComputerName $item.Computername|Where-Object{$_. DisplayName -like "xbox*"}|Format-Table Status,DisplayName,StartType
#Get-Service -ComputerName $item.Computername|fl *
}
Catch [System.InvalidOperationException]
{
Write-Host "Unable to connect to "$item.Computername". Please contact Administrator"
}
finally
{
}
}