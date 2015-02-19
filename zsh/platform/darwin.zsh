# Aliases
alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
alias st="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias stt='st .'


# Environment
export LANG=en_US.UTF-8
export EDITOR='vim'
export LSCOLORS="exfxcxdxbxegedabagacad"

# VirtualEnv specific
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

# pip specific
export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_RESPECT_VIRTUALENV=true
export PIP_REQUIRE_VIRTUALENV=true
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache

# Github token for Homebrew
export HOMEBREW_GITHUB_API_TOKEN=2252bd8c5c32c3386fa8df32ddd064c8f6e61c9a


# Path
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH

