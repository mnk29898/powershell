Cls
Write-Host "Working with Windows Operations :" -ForegroundColor Green `n `n
Write-Host `t `t  `t `t `t "Working with Windows Services -:" -ForegroundColor Yellow
Get-Service|Where-Object{$_. Status -eq "running" -and $_. DisplayName -like "windows*"}|Sort-Object DisplayName|Format-Table Status,DisplayName,StartType
Write-Host "Working with Windows Process -:" -ForegroundColor Yellow
Get-Process|Where-Object{$_. Handles -gt 500 -and $_. Handles -lt 700}|Sort-Object Handles|Format-Table Handles,ProcessName,StartTime
Write-Host "Working with Windows Events -:" -ForegroundColor Yellow
Get-EventLog -logname Application|Where-Object{$_. TimeGenerated -gt "01-09-2020 08:00" -and $_. TimeGenerated -lt "01-09-2020 20:00"}|Format-Table Time*,Source,EntryType
Write-Host "Working with Windows Updates -:" -ForegroundColor Yellow
Get-HotFix|Where-Object{$_. InstalledOn -gt "01-01-2019"}|Format-Table HotFixId,InstalledOn
Write-Host " " -BackgroundColor DarkRed `n
Write-Host "End of Script" -ForegroundColor Red