Cls
Write-Host "Working with Windows Operations :" -ForegroundColor Green `n `n
Write-Host `t `t  `t `t `t `t "Working with Windows Services -:" -ForegroundColor Yellow `n `n
$status= Read-Host "what is the status you want to search ? "
$disname= Read-Host "what is the Displayname you want to search ? "
Get-Service|Where-Object{$_. Status -eq "$status" -and $_. DisplayName -like "$disname"}|Sort-Object DisplayName|Format-Table Status,DisplayName,StartType
Write-Host `t `t `t `t `t `t " Working with Process " -ForegroundColor Yellow `n
$lowlog= Read-Host "enter the lower limit of handles"
$highlog= Read-Host "enter the higher limit for handles"
Get-Process|Where-Object{$_. Handles -gt $lowlog -and $_. Handles -lt $highlog}|Sort-Object Handles|Format-Table Handles,Name
Write-Host `t `t `t `t `t `t "Working with Events" -ForegroundColor Yellow
$lognm= Read-Host "what is log container name ? "
$strttime= Read-Host "What is Start time ? "
$endtime= Read-Host "What is end time ? "
Get-EventLog -LogName $lognm| Where-Object{$_.TimeGenerated -gt $strttime -and $_.TimeGenerated -lt $endtime}
Write-Host `t `t `t `t `t `t "Working with Hotfix" -ForegroundColor Yellow
$search= Read-Host "Enter the description you want to search"
Get-HotFix|Where-Object{$_. Description -like "$search"}
Write-Host "End of Script" -ForegroundColor Red