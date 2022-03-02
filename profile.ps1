Set-Alias -Name open -Value explorer

Function EditAliases { notepad $((Split-Path $profile -Parent) + "\profile.ps1") }
Set-Alias -Name edit-aliases -Value EditAliases
