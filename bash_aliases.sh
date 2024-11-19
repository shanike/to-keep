# SYSTEM
alias fs="nautilus . &"
alias perc='upower -i $(upower -e | grep 'BAT') | grep -E "state|to\ full|percentage"'
alias cdd="cd ../../"

# GIT
alias gs="git status"
alias gl="git lc"
# git log local commits (https://stackoverflow.com/a/3338774/12056841) 
alias gll="git ll"

# DEV PNPM
alias pn="pnpm"
alias pnex="pn exec"
alias d="pn dev"
