Cls
$collection=Import-Csv C:\Users\Administrator\Desktop\cmp1.csv 
foreach($item in $collection)
{
write-host $item
write-host $item.Computername
#Get-Service -ComputerName $item.Computername|Where-Object{$_. DisplayName -like "xbox*"}|Format-Table Status,DisplayName,StartType
Get-Service -ComputerName $item.Computername|fl *
}