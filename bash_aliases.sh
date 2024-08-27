# SYSTEM
alias fs="nautilus . &"
alias perc='upower -i $(upower -e | grep 'BAT') | grep -E "state|to\ full|percentage"'
alias cdd="cd ../../"

# GIT
alias gs="git status"
alias gl="git log --oneline --graph"
# git log local commits (https://stackoverflow.com/a/3338774/12056841) 
alias gll="git log --branches --not --remotes"
# git remove local branches that have no remote
alias git-delete-removed-branches="git fetch -p && git branch -vv | awk \"/: gone]/{print $1}\" | xargs git branch -d"

# DEV PNPM
alias pn="pnpm"
alias pnex="pn exec"
alias d="pn dev"
