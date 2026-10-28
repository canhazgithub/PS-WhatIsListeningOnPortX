Get-NetTCPConnection -LocalPort 443 -State Listen -ErrorAction SilentlyContinue |
    ForEach-Object { Get-Process -Id $_.OwningProcess -ErrorAction SilentlyContinue } |
    Select-Object Id, ProcessName, Path -Unique
