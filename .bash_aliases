alias sp='du -sch *'
alias a='nanoc co'
alias s='rake;notify-send -i bash "rake" "Completed"'
alias d='rake deploy;notify-send -i bash "rake deploy" "Completed"'
alias gitk='gitk --all'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'
alias ls='ls --color=auto'
alias l='ls -CF'
alias ll='ls -hlF'
alias la='ls -hal'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# for sudo/root
alias cleanrepos='apt-get autoclean && apt-get autoremove && apt-get clean'
