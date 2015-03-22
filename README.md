# 内容简介

本项目是我个人的 shell 环境配置文件。

包括：

* bash 登录脚本 .bash_profile 和 bash 环境设置 .bashrc
* GNU screen 的启动脚本 .screenrc
* vim 的启动脚本 .vimrc
* readline 的环境设置 .inputrc
* gdb 的启动脚本 .gdbinit
* sbcl 和 guile（两种 Lisp 环境）的启动脚本
* git 的配置文件 .gitconfig
* Erlang 的一个 OTP server 模版文件 gen_server_templ.erl

以及一个安装脚本 install.sh

# 安装前提

你需要在你的机器上先安装一下软件，然后才可以使用本环境：

* git（如果没有的话你就需要通过 github 提供的下载功能打包下载本项目）
* GNU screen（必须，最好是 4.x 版本）
* vim（vim 的全功能版。一些操作系统最小安装时安装的是 vim 的迷你版，需要自己安装 vim 的完整版）
* 设置默认 shell 为 bash

# 使用方法

1. 运行下面这行命令来下载本项目

  > git clone https://github.com/flw-cn/shell-profiles

2. 安装

  > cd shell-profiles; ./install.sh
