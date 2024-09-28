## 个人使用的一个终端美化器配置，基于[M365Princess](https://github.com/JanDeDobbeleer/oh-my-posh/blob/main/themes/M365Princess.omp.json)

### Windows 10环境使用前提：[Auto Dark Mode](https://apps.microsoft.com/detail/xp8jk4hzbvf435) + [terminal](https://github.com/microsoft/terminal) + [Oh My Posh](https://ohmyposh.dev/)（由于精~~菜~~力~~就~~有~~多~~限~~学~~，目前的方式仅支持在初始化时读取当前Windows系统内的外观标识，暂时未支持实时监控到主题切换深色模式时也跟随更换ohmyposh的配色方案）
```
关于Windows中实现自动跟随系统的日/夜模式切换不同的Oh My Posh主题/配色等方案：

1、装好上述环境的工具程序后，需要先去配置好自己的auto dark mode跟随为系统的夜间模式来切换；
2、再开启terminal，打开settings.json（快捷键：Ctrl + Shift + ,），配置关键字段profiles > defaults > colorScheme为dark & light枚举形式（详情可看platform > Windows > Terminal > settings.json）来支持日夜间模式的切换，该配置好了之后，再打开Windows Terminal > 设置 > 外观 > 应用程序主题 > 切换为“使用Windows主题”。
3、最后ohmyposh也配完后，结束~enjoy it！
```
**TODO：关于Windows这套方案下实现ohmyposh跟随系统日夜间模式的切换，最初的猜测应该也是需要修改Terminal相关的钩子和ps1脚本来监听系统模式变更后…到现在发现好像Terminal的api支持并没有那么开放，貌似无法做到实时刷新当前窗口的终端会话？或者说有可能也是在settings.json中来实现？暂时没继续深入研究，等后面抽空来~**

### macOS食用配方：[iTerm2](https://iterm2.com/) + [Oh My Posh](https://ohmyposh.dev/)
```
关于macOS中实现自动跟随系统的日/夜模式切换不同的Oh My Posh主题/配色等方案：

1、在配置platform > macOS下，有结合当前主题自动切换浅深模式的使用，只需将.zshrc中的内容拷至自身设备的全局环境变量配置的最后即可。
2、打开iTerm2，顶部的Scripts > Manage > Import，导哪个呢？导config > APPEARANCE_MODE_CHANGE.py这个文件即可；and then…关掉iTerm2（exit），再重新打开，完事。
```

### 综合了官方的主题下，感觉不是很适合自己的感官...调整了一点点图标配置...

### 效果图：
![macOS Light](assets/macOS%20Light.png)
<center>macOS Light</center>

![macOS Dark](assets/macOS%20Dark.png)
<center>macOS Dark</center>

![Windows Dark](assets/Windows%20Dark.png)
<center>Windows Dark</center>

![Windows Light](assets/Windows%20Light.png)
<center>Windows Light</center>

### 开冲！！！