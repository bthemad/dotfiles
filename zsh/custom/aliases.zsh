# Git
alias gbd='git branch -d'
alias gbdf='git branch -D'
alias gcb='git checkout -b'

alias gst='git status --short'
alias gaa='git add --all'
alias gct='git checkout -t'

alias gstl='git stash list'
alias gstap='git stash save -p'

alias gsts='git stash show'

alias gls='git log -C --decorate --stat'
alias glp='git log -C --decorate --stat -p'


# Misc
## Horizontal line in shell
alias hrrr='printf "%`tput cols`s"|tr " " "#"'
alias hr='hrrr && hrrr && hrrr'

## Something like scp, but with rsync
alias mscp='rsync --progress --partial --rsh="ssh" -4'

## Add tab to MacVim with this file
alias avim='mvim --remote-tab-silent'

alias :q=exit

# Alias for journaling app
alias jle="jrnl \#log --edit "
alias jl="jrnl \#log"

# Check what VMs are running currently
alias vmst="VBoxManage list runningvms"
