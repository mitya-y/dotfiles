Write-Output "cgsg forever!"

#oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\robbyrussell.omp.json" | Invoke-Expression
#oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\lightgreen.omp.json" | Invoke-Expression
#oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\cert.omp.json" | Invoke-Expression
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\cinnamon.omp.json" | Invoke-Expression

Set-Alias winfetch pwshfetch-test-1

Remove-Alias ls
Set-Alias ls lsd
function La-Function { lsd -a }
Set-Alias la La-Function
function Ll-Function { lsd -l }
Set-Alias ll Ll-Function

if (-Not (test-Path -Path "Z:\")) {
  cd C:\code\
  ./setZ.bat
}
cd Z:\

${function:~} = { Set-Location ~ }
function Cd-Back-Function { Set-Location .\.. }
Set-Alias .. Cd-Back-Function
${function:...} = { Set-Location ..\.. }
${function:....} = { Set-Location ..\..\.. }
${function:.....} = { Set-Location ..\..\..\.. }
${function:......} = { Set-Location ..\..\..\..\.. }

${function:docs} = { Set-Location ~\Documents }
${function:dwld} = { Set-Location ~\Downloads }

function Mk-Fall-Function([string] $path) { 
  New-Item $path -ItemType Directory -ErrorAction SilentlyContinue; Set-Location $path
}
Set-Alias mkfall Mk-Fall-Function

function Reboot-Function { shutdown -r -t 0 }
Set-Alias reboot Reboot-Function
function Poweroff-Function { shutdown -s -t 0 }
Set-Alias poweroff Poweroff-Function

Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward

function History-Function {
   $historyFilePath = (Get-PSReadlineOption).HistorySavePath
   less $historyFilePath
}
Set-Alias history History-Function

Set-Alias grep Select-String
Set-Alias touch ni

Import-Module posh-git

Set-Alias far C:\'Program Files'\'Far manager'\Far.exe

Invoke-Expression (& { (zoxide init powershell | Out-String) })
Remove-Alias cd
Set-Alias cd z

Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
New-Alias open ii

Remove-Alias cat
Set-Alias cat bat
