# vim: set ft=zsh fdm=marker foldenable:
export LSCOLORS=ExfxcxdxCxegedabagacad

function text_with_color {
    local text=$1
    local color=$2
    echo "%F{$color}$text%f%{$reset_color%}"
}

function text_with_color_bold {
    local text=$1
    local color=$2
    echo "%B%F{$color}$text%f%b%{$reset_color%}"
}

function current_work_directory {
    echo $(pwd | sed -e "s,^$HOME,~,")
}

PROMPT='
$(text_with_color %n 226) \
at $(text_with_color %m cyan) \
in $(text_with_color $(current_work_directory) green) \
$(git_prompt_info)\
%f%b%k%{$reset_color%}
$ '

# Git 可用组件及其主题配置:
# git_current_user_name:    用户名（无配置项）
# git_current_user_email:   邮箱（无配置项）  
# git_current_branch:       当前分支名（无配置项）
# git_prompt_short_sha:     HEAD SHA，还有个 _long_ 版本，配置列表: {{{
#ZSH_THEME_GIT_PROMPT_SHA_BEFORE=""
#ZSH_THEME_GIT_PROMPT_SHA_AFTER=""
# }}}
# parse_git_dirty:          工作区是否干净，配置列表: {{{
ZSH_THEME_GIT_PROMPT_DIRTY="%F{red}%{✗%G%}%f"              # 不干净显示这个
ZSH_THEME_GIT_PROMPT_CLEAN="%F{green}%{✔%G%}%f" # 干净显示这个
# }}}
# git_prompt_info:          分支名+工作区简明状态，配置列表: {{{
ZSH_THEME_GIT_PROMPT_PREFIX="(%K{235}%F{178}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%f%k%{$reset_color%})"
# }}}
# git_prompt_ahead:         是否领先于远程分支，领先时显示，配置列表: {{{
#ZSH_THEME_GIT_PROMPT_AHEAD=""
# }}}
# git_commits_ahead:        领先数量，领先时显示，配置列表: {{{
#ZSH_THEME_GIT_COMMITS_AHEAD_PREFIX=""
#ZSH_THEME_GIT_COMMITS_AHEAD_SUFFIX=""
# }}}
# git_prompt_behind:        是否落后于远程分支，落后时显示，配置列表: {{{
#ZSH_THEME_GIT_PROMPT_BEHIND=""
# }}}
# git_commits_behind:       落后数量，落后时显示，配置列表: {{{
#ZSH_THEME_GIT_COMMITS_BEHIND_PREFIX=""
#ZSH_THEME_GIT_COMMITS_BEHIND_SUFFIX=""
# }}}
# git_prompt_status:        工作区详细状态，配置列表: {{{
#ZSH_THEME_GIT_PROMPT_UNTRACKED="%{…%G%}"
#ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%}%{✚%G%}"
#ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[blue]%}%{✚%G%}"
#ZSH_THEME_GIT_PROMPT_RENAMED=""
#ZSH_THEME_GIT_PROMPT_DELETED=""
#ZSH_THEME_GIT_PROMPT_STASHED="%{$fg[red]%}%{●%G%}"
#ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[red]%}%{✖%G%}"
#ZSH_THEME_GIT_PROMPT_AHEAD=""          # 和 git_prompt_ahead 共享
#ZSH_THEME_GIT_PROMPT_BEHIND=""         # 和 git_prompt_behind 共享
#ZSH_THEME_GIT_PROMPT_DIVERGED=""
# }}}
# git_prompt_remote:        远程分支是否存在，配置列表: {{{
#ZSH_THEME_GIT_PROMPT_REMOTE_EXISTS=""      # 存在显示这个
#ZSH_THEME_GIT_PROMPT_REMOTE_MISSING=""     # 缺失显示这个
# }}}
# git_remote_status:        工作区与远程跟踪分支状态，配置列表: {{{
#ZSH_THEME_GIT_PROMPT_REMOTE_STATUS_PREFIX=""
#ZSH_THEME_GIT_PROMPT_REMOTE_STATUS_SUFFIX=""
#ZSH_THEME_GIT_PROMPT_EQUAL_REMOTE=""               # 和远程分支相同
#ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE=""               # 领先于远程分支
#ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE=""              # 落后于远程分支
#ZSH_THEME_GIT_PROMPT_DIVERGED_REMOTE=""            # 形成分叉
#ZSH_THEME_GIT_PROMPT_REMOTE_STATUS_DETAILED=""     # 是否显示详情，如果需要，则可以通过下述两项配置显示领先和落后的数量
#ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE_COLOR=""         # 领先的数量
#ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE_COLOR=""        # 落后的数量
# }}}
