#!/usr/bin/env bash
# vim: set fdm=marker:

# 安装 bash 启动脚本 {{{
rm -f ~/.bash_profile_flw
ln -s ~/.flw-shell-profiles/dot_bash_profile_flw ~/.bash_profile_flw

sed -i '/# flw bash script begin/,/# flw bash script end/d' ~/.bash_profile
cat <<EOD >> ~/.bash_profile
# flw bash script begin
if [ -e ~/.bash_profile_flw ]; then
    . ~/.bash_profile_flw
fi
# flw bash script end
EOD

rm -f ~/.bashrc_flw
ln -s ~/.flw-shell-profiles/dot_bashrc_flw ~/.bashrc_flw

sed -i '/# flw bash script begin/,/# flw bash script end/d' ~/.bashrc
cat <<EOD >> ~/.bashrc
# flw bash script begin
if [ -e ~/.bashrc_flw ]; then
    . ~/.bashrc_flw
fi
# flw bash script end
EOD
# }}}

# 安装 oh-my-zsh 以及 zsh 启动脚本 {{{
rm -f ~/.zshrc
ln -s ~/.flw-shell-profiles/dot_zshrc ~/.zshrc
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
ln -s ~/.flw-shell-profiles/flw.zsh-theme ~/.oh-my-zsh/custom/themes/flw.zsh-theme
# }}}

# 安装 screen 配置文件 {{{
rm -f ~/.screenrc
ln -s ~/.flw-shell-profiles/dot_screenrc ~/.screenrc
# }}}

# 安装 tmux 配置文件 {{{
rm -f ~/.tmux.conf
ln -s ~/.flw-shell-profiles/dot_tmux.conf ~/.tmux.conf
rm -f ~/.tmux-copy-mode.conf
ln -s ~/.flw-shell-profiles/dot_tmux-copy-mode.conf ~/.tmux-copy-mode.conf
# }}}

# 安装 docker 配置文件 {{{
mkdir -p ~/.docker
rm -f ~/.docker/config.json
ln -s ~/.flw-shell-profiles/docker-config.json ~/.docker/config.json
# }}}

# 安装 readline 配置文件 {{{
rm -f ~/.inputrc
ln -s ~/.flw-shell-profiles/dot_inputrc ~/.inputrc
# }}}

# Haskell 不使用 readline 而是用 haskeline，另外还要注意在 tmux 下配合修改 {{{
rm -f ~/.haskeline
ln -s ~/.flw-shell-profiles/dot_haskeline ~/.haskeline
# }}}

# Racket 不使用 readline 而是用 libedit，另外还需要在启动时加载 xrepl {{{
rm -f ~/.editrc
ln -s ~/.flw-shell-profiles/dot_editrc ~/.editrc
rm -f ~/.racketrc
ln -s ~/.flw-shell-profiles/dot_racketrc ~/.racketrc
# }}}

# 安装 gdb 启动脚本 {{{
rm -f ~/.gdbinit
ln -s ~/.flw-shell-profiles/dot_gdbinit ~/.gdbinit
# }}}

# 安装 guile 启动脚本 {{{
rm -f ~/.guile
ln -s ~/.flw-shell-profiles/dot_guile ~/.guile
# }}}

# 安装 sbclrc 启动脚本 {{{
rm -f ~/.sbclrc
ln -s ~/.flw-shell-profiles/dot_sbclrc ~/.sbclrc
# }}}
