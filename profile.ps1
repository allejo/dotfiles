Set-Alias -Name open -Value Start

Function PrFiles { gh pr-files | ForEach-Object -Process {[void](Test-Path $_) && Rider.cmd $_ && Start-Sleep -Milliseconds 50} }
Set-Alias -Name pr-files -Value PrFiles

Function EditAliases { notepad $((Split-Path $profile -Parent) + "\profile.ps1") }
Set-Alias -Name edit-aliases -Value EditAliases
