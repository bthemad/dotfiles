# Path
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=/usr/local/opt/python/libexec/bin:$PATH

# Plugins
## Syntax highlighting
if [ -f /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
    source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

## Substring search
if [ -f /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh ]; then
    source /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh
fi

## AutoJump
if [ -f /usr/local/etc/profile.d/autojump.sh ]; then
    source /usr/local/etc/profile.d/autojump.sh
fi

## iTerm shell integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

 # bind UP and DOWN arrow keys
zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

# bind P and N for EMACS mode
bindkey -M emacs '^P' history-substring-search-up
bindkey -M emacs '^N' history-substring-search-down

# Aliases
alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
alias st="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias stt='st .'
alias ij="open -a /Applications/IntelliJ\ IDEA\ 14.app"

alias setJdk6='export JAVA_HOME=$(/usr/libexec/java_home -v 1.6)'
alias setJdk7='export JAVA_HOME=$(/usr/libexec/java_home -v 1.7)'
alias setJdk8='export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)'

alias notifyOk='terminal-notifier -title "Terminal" -message "Success"'
alias notifyErr='terminal-notifier -title "Terminal" -message "Error"'

alias dm='docker-machine'

# Alias for journaling app
alias jj="jrnl \#log"
alias jje="jrnl \#log --export text > ~/.jj.md && code --wait ~/.jj.md && dayone2 new -d 'Yesterday at 23:23' < ~/.jj.md && echo "" > ~/.daily.txt"

# Environment
export LANG=en_US.UTF-8
export EDITOR='vim'
export LSCOLORS="exfxcxdxbxegedabagacad"

# VirtualEnv specific
export VIRTUALENVWRAPPER_PYTHON=/usr/local/opt/python/libexec/bin/python
export WORKON_HOME=$HOME/.virtualenvs
if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
    source /usr/local/bin/virtualenvwrapper.sh
fi

# pip specific
export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_RESPECT_VIRTUALENV=true
export PIP_REQUIRE_VIRTUALENV=true
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache

# GVM
if [ -f ~/.gvm/bin/gvm-init.sh ]; then
    source ~/.gvm/bin/gvm-init.sh
fi

# Github token for Homebrew
export HOMEBREW_GITHUB_API_TOKEN=2252bd8c5c32c3386fa8df32ddd064c8f6e61c9a

# Java
export JAVA_HOME=$(/usr/libexec/java_home)

# Ruby
export RI="--format ansi --width 70"
# eval "$(rbenv init -)"
