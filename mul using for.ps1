Cls
Write-Host "Multiplication table using for"
for($i=1;$i -le 20;$i++)
#for($i=1;$i -le 20;$i+=2)
#for($i=0;$i -le 20;$i+=2)
{
$result=10*$i
Write-Host "10 X $i = $result"
}
