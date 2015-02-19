source ~/.antigen/antigen.zsh
platform=`uname | awk '{print tolower($0)}'`
export PLATFORM=${platform}

antigen use oh-my-zsh

antigen bundles <<EOBUNDLES
    # Common plugins
    zsh-users/zsh-syntax-highlighting
    zsh-users/zsh-completions src
    git
    autojump
    colorize
    extract

    # Programming
    ## PHP
    composer

    ## Python
    python
    pip

    ## Groovy
    grails
    gradle
    yerinle/zsh-gvm

    ## Ruby
    gem
EOBUNDLES


# Platform-specific bundles
if [[ $PLATFORM == 'darwin' ]]; then
    antigen bundle brew
    antigen bundle copydir
    antigen bundle copyfile
fi

antigen apply

## My customisation on-top of oh-my-zsh
antigen bundle $HOME/.dotfiles/zsh/custom


# Load platform-specific configs and aliases
droot=~/.dotfiles/zsh
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
