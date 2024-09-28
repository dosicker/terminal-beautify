function Switch-PoshTheme {
	# 获取注册表内存储当前系统的应用外观模式：1 => Light；0 => Dark
	$appsTheme=Get-ItemPropertyValue -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" -Name "AppsUseLightTheme"

	if ($appsTheme -eq 1) {
		$Env:APPEARANCE_MODE='light'
	} else {
		$Env:APPEARANCE_MODE='dark'
	}

	# 执行 oh-my-posh 重新应用的操作
	oh-my-posh init pwsh --config "https://raw.githubusercontent.com/dosicker/terminal-beautify/main/config/agxm.omp.json" | Invoke-Expression
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
Switch-PoshTheme

# 配置Tab自动补全
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
# 上下方向键，历史补全
Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward

# 设置命令历史提示
# Set-PSReadLineOption -PredictionSource History
# 设置命令历史列表提示
# Set-PSReadLineOption -PredictionViewStyle ListView