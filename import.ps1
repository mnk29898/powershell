Cls
$collection=Import-Csv "C:\Users\TW5\Documents\data.csv"
foreach($item in $collection)
{
if($item.Country -eq "India")
{
#$item|Format-Table Fname,Lname,State,Country
$item|select Fname,Lname,State,Country
#Write-Host $item.Fname,$item.Lname,$item.State,$item.Country
}
}