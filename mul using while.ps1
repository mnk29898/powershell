Cls
Write-Host "multiplication using for"
$a = Read-Host "enter table no"
$i=0
while($i -le 20)
{
$rslt = $i*$a
Write-Host "$a X $i = $rslt"
$i+=2
}