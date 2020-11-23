$date = (Get-Date -F G).Replace('/','').Replace(' ','_').Replace(':','');

GET-WinEvent System | Where-Object { ($_.Id -eq 42 -or $_.ProviderName -Match 'Power-Troubleshooter') -and $_.TimeCreated-ge (Get-Date).AddDays(-7) } | select-Object TimeCreated,Id | export-CSV "[保存先のフォルダ指定]\$getWindowsEvent.csv" -Encoding UTF8


