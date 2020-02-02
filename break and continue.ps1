Cls
Write-Host "multiplication using for"
$tno = Read-Host "enter table no"
$strpoint = Read-Host "enter starting point"
$endpoint = Read-Host "enter end point"
for($strpoint;$strpoint -le $endpoint;$Strpoinnt++)
{
#if($strpoint -gt 10)
if($strpoint -eq 11)
{
#break
Continue
}
$rslt = $strpoint*$tno
Write-Host "$tno X $strpoint = $rslt"
$strpoint+=1
}