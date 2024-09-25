# 相关模块导入
Import-Module posh-git
Import-Module npm-completion
Import-Module Get-ChildItemColor
$env:PYTHONIOENCODING="utf-8"

# Theme BEGIN oh-my-posh beautify
# oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\jandedobbeleer.omp.json" | Invoke-Expression
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\agxm.omp.json" | Invoke-Expression
# oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\M365Princess.omp.json" | Invoke-Expression

# 配置Tab自动补全
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
# 上下方向键，历史补全
Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward

# 设置命令历史提示
# Set-PSReadLineOption -PredictionSource History
# 设置命令历史列表提示
# Set-PSReadLineOption -PredictionViewStyle ListView