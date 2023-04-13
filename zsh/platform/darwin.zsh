# Path
export PATH=$(brew --prefix)/bin:$PATH
export PATH=$(brew --prefix)/sbin:$PATH
export PATH=$(brew --prefix)/opt/python@3.10/libexec/bin:$PATH

# Plugins
## Syntax highlighting
if [ -f $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
    source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

## Substring search
if [ -f $(brew --prefix)/share/zsh-history-substring-search/zsh-history-substring-search.zsh ]; then
    source $(brew --prefix)/share/zsh-history-substring-search/zsh-history-substring-search.zsh
fi

## AutoJump
if [ -f /opt/homebrew/etc/profile.d/autojump.sh ]; then
    source /opt/homebrew/etc/profile.d/autojump.sh
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
alias st="/opt/homebrew/bin/code"
alias c="/opt/homebrew/bin/code"

# Alias for journaling app
alias jj="jrnl \#log"
alias jjc="echo "" > ~/.daily.txt"
alias jje="jrnl \#log --export text > ~/.jj.md && st --wait ~/.jj.md && dayone2 new -d 'Yesterday at 23:23' < ~/.jj.md && echo "" > ~/.daily.txt"
alias jjt="jrnl \#log --export text > ~/.jj.md && st --wait ~/.jj.md && dayone2 new -d 'Today at 23:23' < ~/.jj.md && echo "" > ~/.daily.txt"

# Environment
export LANG=en_US.UTF-8
export EDITOR='vim'
export LSCOLORS="exfxcxdxbxegedabagacad"

# VirtualEnv specific
export VIRTUALENVWRAPPER_PYTHON=$(brew --prefix)/opt/python@3.10/libexec/bin/python
export WORKON_HOME=$HOME/.virtualenvs
if [ -f $(brew --prefix)/bin/virtualenvwrapper.sh ]; then
    source $(brew --prefix)/bin/virtualenvwrapper.sh
fi

PYTHONWARNINGS=ignore

# pip specific
export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_RESPECT_VIRTUALENV=true
export PIP_REQUIRE_VIRTUALENV=true
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache

# GVM
if [ -f ~/.gvm/bin/gvm-init.sh ]; then
    source ~/.gvm/bin/gvm-init.sh
fi

# Ruby
export RI="--format ansi --width 70"
# eval "$(rbenv init -)"
