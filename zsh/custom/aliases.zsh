# Git
alias gbd='git branch -d'
alias gbdf='git branch -D'
alias gcb='git checkout -b'

alias gst='git status --short'
alias gaa='git add --all'
alias gct='git checkout -t'

alias gstl='git stash list'
alias gstap='git stash save -p'

alias gsts='git stash save'
alias gsto='git stash show'

alias gls='git log -C --decorate --stat'
alias glp='git log -C --decorate --stat -p'

alias gdc='git diff --cached'

alias gpu='git push --set-upstream'

alias gfp='git fetch -p'

alias gr='git reset'


# Misc
## Horizontal line in shell
alias hrrr='printf "%`tput cols`s"|tr " " "#"'
alias hr='hrrr && hrrr && hrrr'

## Something like scp, but with rsync
alias mscp='rsync --progress --partial --rsh="ssh" -4'

## Add tab to MacVim with this file
alias avim='mvim --remote-tab-silent'

alias :q=exit

# Check what VMs are running currently
alias vmst="VBoxManage list runningvms"

# Access zshrc
alias zshrc='vim ~/.zshrc'

# Fast taildu -sh *
alias t='tail -f'

# Tell me where my free space is?
alias dud='du -d 1 -h'
alias duf='du -sh *'

# Find things fast
alias fd='f() { find . -type d -name "*$1*"}; f'
alias ff='f() { find . -type f -name "*$1*"}; f'

alias dsh='f() { docker exec -ti $1 /bin/bash }; f'

# Gradle wrapper
alias gw='./gradlew'
alias gwc='./gradlew check'
alias gwcc='./gradlew clean check'

alias pcp='pwd | pbcopy'
alias tsn='date +"%s"'
alias tsf='date -r '