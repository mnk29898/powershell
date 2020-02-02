Cls
Write-Host "multiplication using for"
$tno = Read-Host "enter table number"
$strpoint = Read-Host "enter starting number"
$endpoint = Read-Host "enter ending number"
for($strpoint;$strpoint -le $endpoint;$strpoint++)
{
$rslt = $strpoint*$tno
Write-Host " $tno X $strpoint = $rslt"
}