Cls
Write-Host "Addition Script" -ForegroundColor Green `n
[int]$num1=Read-Host "enter num1"
[int]$num2=Read-Host "enter num2"
$sum=[int]$num1+$num2
Write-Host "The addition of $num1 and $num2 is $sum" `n