#!/usr/bin/env bash
# vim: set fdm=marker:

REPO_PATH=~/.flw-shell-profiles
REPO_NAME=$(basename $REPO_PATH)

install() {
    dotname=$(basename $1)
    realname=${dotname/#dot_/.}
    if [ -z "$realname" ]; then
        echo Cannot install $dotname.
        return
    fi
    echo -n Install ~/$realname...
    rm -f ~/$realname
    ln -s $REPO_NAME/$dotname ~/$realname
    echo done
}

# dot_config 的方案还有问题：
# TODO: macOS 和 FreeBSD 上和其它软件的配置方法冲突怎么办，特别是 XDE 中
# install dot_config                # 尽量通过 ~/.config/ 目录来配置，这样更集中

install dot_bash_profile_flw
install dot_bashrc_flw
install dot_zshrc
install dot_screenrc                # screen 配置文件
install dot_tmux.conf               # tmux 和 tmate 的配置文件
install dot_tmux-copy-mode.conf     # tmux 复制模式的配置文件，tmate 不支持所以另放
install dot_fzf.zsh                 # fzf 配置文件
install dot_inputrc                 # readline 配置文件
install dot_gdbinit                 # gdb 启动脚本
install dot_guile                   # guile 启动脚本
install dot_sbclrc                  # sbcl 启动脚本
install dot_haskeline               # Haskell REPL 配置，另外还要注意在 tmux 下配合修改
install dot_racketrc                # Racket 启动配置
install dot_editrc                  # Racket REPL 配置，另外还需要在 racketrc 里加载 xrepl
install dot_gitconfig               # Git 配置文件

# 安装 bash 启动脚本 {{{
touch ~/.bash_profile
perl -i -lne 'print unless /# flw bash script begin/../# flw bash script end/' ~/.bash_profile
cat <<EOD >> ~/.bash_profile
# flw bash script begin
if [ -e ~/.bash_profile_flw ]; then
    . ~/.bash_profile_flw
fi
# flw bash script end
EOD

touch ~/.bashrc
perl -i -lne 'print unless /# flw bash script begin/../# flw bash script end/' ~/.bashrc
cat <<EOD >> ~/.bashrc
# flw bash script begin
if [ -e ~/.bashrc_flw ]; then
    . ~/.bashrc_flw
fi
# flw bash script end
EOD
# }}}

# 安装 oh-my-zsh 以及 zsh 启动脚本 {{{
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
ln -s $REPO_PATH/flw.zsh-theme ~/.oh-my-zsh/custom/themes/flw.zsh-theme
# }}}

# 安装 docker 配置文件 {{{
rm -f ~/.docker
ln -s ~/.config/docker ~/.docker
# }}}
