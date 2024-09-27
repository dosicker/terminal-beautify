## 个人使用的一个终端美化器配置，基于[M365Princess](https://github.com/JanDeDobbeleer/oh-my-posh/blob/main/themes/M365Princess.omp.json)

### Windows 10环境使用前提：[terminal](https://github.com/microsoft/terminal) + [Oh My Posh](https://ohmyposh.dev/)
```
关于Windows中实现自动跟随系统的日/夜模式切换不同的Oh My Posh主题/配色等方案（大概版，详细版后续补）：

1、结合：[Auto Dark Mode](https://apps.microsoft.com/detail/xp8jk4hzbvf435)
2、应该也是需要修改terminal相关的钩子和ps1脚本来监听系统模式变更后调整…
3、待补充……
```

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

<br />
<br />

![空的哈哈哈哈～后面再补Windows Light]()
<center>Windows Light</center>

### 开冲！！！