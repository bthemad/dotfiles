source ~/.antigen/antigen.zsh
platform=`uname | awk '{print tolower($0)}'`
export PLATFORM=${platform}

antigen use oh-my-zsh

fpath=(/usr/local/share/zsh-completions $fpath)

antigen bundle yerinle/zsh-gvm
antigen bundle zsh-users/zsh-syntax-highlighting

# Common plugins
antigen bundle git
antigen bundle autojump
antigen bundle colorize
antigen bundle extract

# Programming
## PHP
antigen bundle composer

## Python
antigen bundle pip

## Groovy
antigen bundle grails
antigen bundle gradle

## Ruby
antigen bundle gem

# Platform-specific bundles
if [[ $PLATFORM == 'darwin' ]]; then
    antigen bundle brew
    antigen bundle brew-cask
    antigen bundle copydir
    antigen bundle copyfile

fi

antigen apply

## My customizations
antigen bundle $HOME/.dotfiles/zsh/custom


droot=~/.dotfiles/zsh
# Load platform-specific shortcuts


if [ -f ${droot}/platform/${platform}.zsh ]; then
    source ${droot}/platform/${platform}.zsh
fi

# Load machine-specific files, if presented
hostname=`hostname -s`
if [ -f ${droot}/hostname/${hostname}.zsh ]; then
    source ${droot}/hostname/${hostname}.zsh
fi

# Install fzf for Ctrl+R
if [ -f ~/.fzf.zsh ]; then
    source ~/.fzf.zsh
fi
