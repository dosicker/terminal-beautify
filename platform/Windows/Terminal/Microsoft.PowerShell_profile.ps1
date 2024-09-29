# 执行 oh-my-posh 应用（更新）
function ApplyPoshTheme {
	oh-my-posh init pwsh --config "https://raw.githubusercontent.com/dosicker/terminal-beautify/main/config/agxm.omp.json" | Invoke-Expression
}

function Switch-PoshTheme {
	# 获取注册表内存储当前系统的应用外观模式：1 => Light；0 => Dark
	$appsTheme=Get-ItemPropertyValue -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" -Name "AppsUseLightTheme"

	if ($appsTheme -eq 1) {
		$Env:APPEARANCE_MODE='light'
	} else {
		$Env:APPEARANCE_MODE='dark'
	}

    ApplyPoshTheme
}

# 相关模块导入
Import-Module posh-git
Import-Module npm-completion
Import-Module Get-ChildItemColor

# $Env:APPEARANCE_MODE=$mode

# Theme BEGIN oh-my-posh beautify
# oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\agxm.omp.json" | Invoke-Expression
# oh-my-posh init pwsh --config "https://raw.githubusercontent.com/dosicker/terminal-beautify/main/config/agxm.omp.json" | Invoke-Expression
# 执行
if ($PSVersionTable.Platform -eq 'Unix') {
	ApplyPoshTheme
} else {
	# ps-read-line
	Import-Module PSReadLine
	Switch-PoshTheme
}


# 设置命令历史提示
Set-PSReadLineOption -PredictionSource History
# 配置Tab自动补全
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
# 上下方向键，历史补全
Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward
# 设置 Ctrl+z 为撤销
Set-PSReadLineKeyHandler -Key "Ctrl+z" -Function Undo

# 使用 ls 和 ll 查看目录
function ListDirectory {
    (Get-ChildItem).Name
    Write-Host("")
}
Set-Alias -Name ls -Value ListDirectory
Set-Alias -Name ll -Value Get-ChildItem

# touch alias
function touch {
    param (
        [string]$path
    )
    if (!(Test-Path $path)) {
        New-Item -ItemType File -Path $path
    } else {
        (Get-Item $path).LastWriteTime = Get-Date
    }
}
# 设置命令历史列表提示
# Set-PSReadLineOption -PredictionViewStyle ListView
# 每次回溯输入历史，光标定位于输入内容末尾
Set-PSReadLineOption -HistorySearchCursorMovesToEnd