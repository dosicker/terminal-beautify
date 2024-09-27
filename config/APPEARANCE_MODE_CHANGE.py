#!/usr/bin/env python3

import asyncio
import iterm2

async def on_theme_change(connection, theme):
    # 检测当前主题是浅色还是深色
    await asyncio.create_subprocess_shell("""
        osascript -e 'tell application "iTerm2" to tell current session of current window to write text "source ~/.zshrc"'
        """)

async def main(connection):
    app = await iterm2.async_get_app(connection)
    # 获取当前系统主题并根据当前主题执行操作
    await on_theme_change(connection, await app.async_get_variable("effectiveTheme"))
    
    # 监听系统主题的切换
    async with iterm2.VariableMonitor(connection, iterm2.VariableScopes.APP, "effectiveTheme", None) as monitor:
        while True:
            # 等待主题变更事件
            new_theme = await monitor.async_get()
            await on_theme_change(connection, new_theme)

iterm2.run_forever(main)
