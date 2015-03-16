#!/bin/env bash
# vim: set fdm=marker:

# 安装 bash 启动脚本 {{{
rm -f ~/.bash_profile_flw
ln -s ~/shell-profiles/dot_bash_profile_flw ~/.bash_profile_flw

sed -i '/# flw bash script begin/,/# flw bash script end/d' ~/.bash_profile
cat <<EOD >> ~/.bash_profile
# flw bash script begin
if [ -e ~/.bash_profile_flw ]; then
    . ~/.bash_profile_flw
fi
# flw bash script end
EOD

rm -f ~/.bashrc_flw
ln -s ~/shell-profiles/dot_bashrc_flw ~/.bashrc_flw

sed -i '/# flw bash script begin/,/# flw bash script end/d' ~/.bashrc
cat <<EOD >> ~/.bashrc
# flw bash script begin
if [ -e ~/.bashrc_flw ]; then
    . ~/.bashrc_flw
fi
# flw bash script end
EOD
# }}}

# 安装 vim 配置文件 {{{
rm -f ~/.vimrc_flw
ln -s ~/shell-profiles/dot_vimrc_flw ~/.vimrc_flw
mkdir -p ~/.vim/colors && cp -f flwcolor.vim ~/.vim/colors/
rm -f ~/.vimrc
touch ~/.vimrc
sed -i '/" flw vim script begin/,/" flw vim script end/d' ~/.vimrc && sed -i '1d' ~/.vimrc
sed -i '1i" flw vim script begin\nif filereadable( expand( "$HOME/.vimrc_flw" ) )\n    source ~/.vimrc_flw\nendif\n" flw vim script end\n' ~/.vimrc
# }}}

# 安装 screen 配置文件 {{{
rm -f ~/.screenrc
ln -s ~/shell-profiles/dot_screenrc ~/.screenrc
# }}}

# 安装 readline 配置文件 {{{
rm -f ~/.inputrc
ln -s ~/shell-profiles/dot_inputrc ~/.inputrc
# }}}

# 安装 gdb 启动脚本 {{{
rm -f ~/.gdbinit
ln -s ~/shell-profiles/dot_gdbinit ~/.gdbinit
# }}}

# 安装 guile 启动脚本 {{{
rm -f ~/.guile
ln -s ~/shell-profiles/dot_guile ~/.guile
# }}}

# 安装 sbclrc 启动脚本 {{{
rm -f ~/.sbclrc
ln -s ~/shell-profiles/dot_sbclrc ~/.sbclrc
# }}}
