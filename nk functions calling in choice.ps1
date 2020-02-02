cls
Write-Host " choice : 
1.Addition
2.Subtraction
3.Multiplication
4.Divison"
$chc=Read-Host("enter your choice ")
if(!$chc)
{
Write-Host "Entered an empty value"
break
}

if($chc -in 1,2,3,4)
{

$num1=Read-Host("enter first number")
$num2=Read-Host("enter second number")

if($chc -eq 1)
{
addition
}
elseif($chc -eq 2)
{
subtraction
}
elseif($chc -eq 3)
{
multiply
}
elseif($chc -eq 4)
{
divison
}
}
else
{
Write-Host "Enterd wrong choice"
}

Function addition
{
$sum=[int]$num1+[int]$num2
Write-Host "total of list is $sum"
}

Function subtraction
{
$sub=$num1-$num2
Write-Host "difference between numbers is $sub"
}

Function multiply
{
$mul=[int]$num1*[int]$num2
Write-Host "product of two numbers is $mul"
}

Function divison
{
$div=$num1/$num2
Write-Host "divison is $div"
}
