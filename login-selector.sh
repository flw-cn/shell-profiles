#!/bin/sh

BACKTITLE='主机登录器==========by-flw--2015.05.08'
DIALOG="dialog --backtitle $BACKTITLE"

DIALOG_MENU=`mktemp /tmp/dialog.XXXXXX`
DIALOG_SELECT=`mktemp /tmp/dialog.XXXXXX`
BLACK_LIST="$HOME/shell-profiles/login-selector.blacklist"

awk '{print $1}' ~/.ssh/known_hosts |   # 历史上曾经登录过的主机
    grep -vf $BLACK_LIST |              # 删除黑名单里的内容
    nl |                                # 加上行号，行号和 dialog 的选择号保持一致，可以用来在后面做定位用。
    awk -F, '{print $1}' |              # 只取第一段
    tee $DIALOG_MENU |                  # 将结果保存起来
    xargs $DIALOG --ok-label "选择" --cancel-label "放弃" \
        --menu "请选择登录设备：" 24 60 24 0 localhost 2>$DIALOG_SELECT

dialog_select=`cat $DIALOG_SELECT`

if [ "x$dialog_select" == "x" ]; then
    true # NOTHING TO DO
elif [ "x$dialog_select" == "x0" ]; then
    exec screen -U -D -RR
else
    host=`head -n $dialog_select $DIALOG_MENU 2>/dev/null | tail -1 | awk '{print $2}' | perl -lne 'print /\[(.+)\]:(\d+)/ ? "$1 -p $2" : $_'`

    rm -f $DIALOG_MENU
    rm -f $DIALOG_SELECT

    TITLE="即将登录到 $host ..."
    export user
    exec 3>&1
    user=`$DIALOG --title "$TITLE"              \
    --ok-label "登录"                           \
    --nocancel                                  \
    --form "确认登录账号:"                      \
    8 50 0                                      \
        "用户名 :"  1 1 "$USER"   1 20 20 0     \
    2>&1 1>&3`
    returncode=$?
    exec 3>&-

    exec ssh $user@$host
fi
