bind 'set show-all-if-ambiguous on'
bind TAB:menu-complete
alias c=clear
alias eliminabackups='find . -name "*~" -exec rm {} \;'
alias tmuxcasa='tmux -2 new -s casa'
alias konsole24='konsole --notransparency'
alias temps='curl wttr.in/barcelona'
alias screencapture='ffmpeg -video_size 1920x1200 -framerate 30 -f x11grab -i :0.0 -c:v libx264 -qp 0 -preset ultrafast capture.mkv'
export LC_TIME=ca_ES.UTF-8
export VISUAL=vim
export SASS_LIBSASS_PATH=~/Software/libsass
export PATH=$PATH:~/Scripts
export PATH=~/.local/bin/:$PATH
export PATH=~/.composer/vendor/bin/:$PATH
export PATH=$PATH:~/node_modules/.bin/
export PATH=$PATH:~/Software/sassc/bin/
export WORKON_HOME=~/Envs
source /usr/bin/virtualenvwrapper.sh
export PS1='\[\e[32m\]\u\[\e[0m\]@\[\e[33m\]\h\[\e[0m\]:\w\[\e[32m\]$ \[\e[0m\]'
if [ $TERM != "linux" ]
then
    triangle=$'\uE0B0'
    export PS1='\[\e[42m\]\u@\h \[\e[0;32m\]\[\e[102m\]$triangle\[\e[0;30m\]\[\e[102m\] \w \[\e[0;92m\]\[\e[40m\]$triangle\[\e[0m\]\[\e[40m\] '
fi
# Iniciem powerline només en X sessions. A TTY TERM té el valor "linux".
#if [ $TERM != "linux" ]
#then
#    powerline-daemon -q
#    POWERLINE_BASH_CONTINUATION=1
#    POWERLINE_BASH_SELECT=1
#    . /usr/lib64/python2.7/site-packages/powerline/bindings/bash/powerline.sh
#fi
export PATH="/opt/yarn/bin:$PATH"
