cls
Function multiplication
{
[int]$tno=Read-Host("Enter table no")
[int]$strpoint=Read-Host("Enter starting point")
[int]$lstpoint=Read-Host("Enter last point")
for($strpoint;$strpoint -le $lstpoint;$strpoint+=1)
{
if($strpoint -eq 15)
{
continue
#break
}
$result=$tno*$strpoint
Write-Host "$tno X $strpoint = $result"
}
}

multiplication