Cls
Write-Host "Airthemetic if Script" -ForegroundColor Green `n `n
Write-Host "choice : 1.Addition
2.subtraction
3.multiplication
4.division"
$choice= Read-Host "enter your choice"
if($choice -in 1,2,3,4)
{

[int]$num1=Read-Host "enter num1"
[int]$num2=Read-Host "enter num2"

}
Switch($choice)
{

1 #if($choice -eq 1)
{

$sum=[int]$num1+$num2
Write-Host "The addition of $num1 and $num2 is $sum" `n

}
2 #elseif($choice -eq 2)
{

$sub=$num1-$num2
Write-Host "The subtraction of $num1 and $num2 is $sub" `n

}
3 #elseif($choice -eq 3)
{

$mul=$num1*$num2
Write-Host "The addition of $num1 and $num2 is $mul" `n

}
4 #elseif($choice -eq 4)
{

$div=$num1/$num2
Write-Host "The division of $num1 and $num2 is $div" `n

}
default
{

Write-Host "invalid input"

}

}