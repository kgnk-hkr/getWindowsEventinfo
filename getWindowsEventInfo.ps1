$date = (Get-Date -F G).Replace('/','').Replace(' ','_').Replace(':','');

GET-WinEvent System | Where-Object { ($_.Id -eq 42 -or $_.ProviderName -Match 'Power-Troubleshooter') -and $_.TimeCreated-ge (Get-Date).AddDays(-7) } | select-Object TimeCreated,Id | export-CSV "D:\documents\documents\202011_logicapps\$date.csv" -Encoding UTF8


