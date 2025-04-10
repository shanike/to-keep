# SYSTEM
alias fs="nautilus . &"
alias perc='upower -i $(upower -e | grep 'BAT') | grep -E "state|to\ full|percentage"'
alias cdd="cd ../../"
alias c="cd ../"
alias kill8080="kill -9 $(lsof -t -i tcp:8080)"

# GIT
alias gs="git status"
alias gl="git lc"
# git log local commits (https://stackoverflow.com/a/3338774/12056841) 
alias gll="git ll"

# DEV PNPM
alias pn="pnpm"
alias pnex="pn exec"
alias d="pn dev"

# CURSOR
alias cursor="~/Downloads/Cursor-0.48.7-x86_64.AppImage --no-sandbox"
