# oh-my-posh configuration

# 检测当前系统的Light/Dark模式
if [[ $(defaults read -g AppleInterfaceStyle 2>/dev/null) == "Dark" ]]; then
    export APPEARANCE_MODE="dark"
else
    export APPEARANCE_MODE="light"
fi

# 设定omp-cache缓存文件路径
export OMP_CACHE_DIR=$HOME/Library/Caches

# init Oh My Posh
# eval "`oh-my-posh init zsh --config https://raw.githubusercontent.com/dosicker/terminal-beautify/refs/heads/main/config/agxm.omp.json`"
if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
    eval "$(oh-my-posh init zsh --config https://raw.githubusercontent.com/dosicker/terminal-beautify/refs/heads/main/config/agxm.omp.json)"
fi