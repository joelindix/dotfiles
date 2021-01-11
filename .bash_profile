bind 'set show-all-if-ambiguous on'
bind TAB:menu-complete
alias c=clear
alias eliminabackups='find . -name "*~" -exec rm {} \;find . -name ".*~" -exec rm {} \;'
alias delhtmlbackups='find public_html -name "*~" -exec rm {} \;'
alias virtbox='CR_RENDER_FORCE_PRESENT_MAIN_THREAD=0 VirtualBox'
alias temps='curl wttr.in/barcelona'
alias screencapture='ffmpeg -video_size 1920x1200 -framerate 30 -f x11grab -i :0.0 -c:v libx264 -qp 0 -preset ultrafast capture.mkv'
export LC_TIME=ca_ES.UTF-8
export VISUAL=vim
export PATH=~/.local/bin/:$PATH
source ~/.git-prompt.sh
export PS1='\[\e[32m\]\u\[\e[0m\]@\[\e[33m\]\h\[\e[0m\]:\w\[\e[32m\]$(__git_ps1)$ \[\e[0m\]'
TERMINAL=$(ps -p$PPID | sed '1d' | awk '{print $4}')
if [[ $TERM != "linux" && $TERMINAL != "java" ]]
then
    triangle=$'\uE0B0'
    tri=$'\uE0B0'
    irt=$'\uE0B2'
    export PS1='\[\e[0;32m\]┌─\[\033[0m\]\[\e[42m\] \u@\h \[\e[0;32m\]\[\e[102m\]$tri\[\e[0;30m\]\[\e[102m\] \w $(__git_ps1 "\[\e[0;36m\]\[\e[102m\]$irt\[\e[0m\]\[\e[46m\] %s \[\e[0;36m\]\[\e[102m\]$tri\[\e[42m\]\[\e[0m\]")\[\e[0;92m\]\[\e[40m\]$tri\[\e[0m\]\n\[\033[0;92;2m\]└──\[\033[0;92;1m\]▶ \[\033[0m\]'
fi
