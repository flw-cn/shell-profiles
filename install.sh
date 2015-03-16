#!/bin/env bash
# vim: set fdm=marker:

# ��װ bash �����ű� {{{
ln -s ~/shell_profiles/dot_bash_profile_flw ~/.bash_profile_flw

sed -i '/# flw bash script begin/,/# flw bash script end/d' ~/.bash_profile
cat <<EOD >> ~/.bash_profile
# flw bash script begin
if [ -f ~/.bash_profile_flw ]; then
    . ~/.bash_profile_flw
fi
# flw bash script end
EOD
# }}}

# ��װ vim �����ļ� {{{
ln -s ~/shell_profiles/dot_vimrc_flw ~/.vimrc_flw
mkdir -p ~/.vim/colors && cp -f flwcolor.vim ~/.vim/colors/
rm -f ~/.vimrc
touch ~/.vimrc
sed -i '/" flw vim script begin/,/" flw vim script end/d' ~/.vimrc && sed -i '1d' ~/.vimrc
sed -i '1i" flw vim script begin\nif filereadable( expand( "$HOME/.vimrc_flw" ) )\n    source ~/.vimrc_flw\nendif\n" flw vim script end\n' ~/.vimrc
# }}}

# ��װ screen �����ļ� {{{
rm -f ~/.screenrc
ln -s ~/shell_profiles/dot_screenrc ~/.screenrc
# }}}

# ��װ readline �����ļ� {{{
rm -f ~/.inputrc
ln -s ~/shell_profiles/dot_inputrc ~/.inputrc
# }}}

# ��װ gdb �����ű� {{{
rm -f ~/.gdbinit
ln -s ~/shell_profiles/dot_gdbinit ~/.gdbinit
# }}}

# ��װ guile �����ű� {{{
rm -f ~/.guile
ln -s ~/shell_profiles/dot_guile ~/.guile
# }}}

# ��װ sbclrc �����ű� {{{
rm -f ~/.sbclrc
ln -s ~/shell_profiles/dot_sbclrc ~/.sbclrc
# }}}
