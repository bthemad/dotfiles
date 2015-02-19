source ~/.antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle grails
antigen bundle yerinle/zsh-gvm
antigen bundle zsh-users/zsh-syntax-highlighting

# Common plugins
antigen bundle git
antigen bundle mercurial
antigen bundle autojump

# PHP plugins
antigen bundle composer

# Python plugins
antigen bundle pip

antigen apply

## My customizations
antigen bundle $HOME/.dotfiles/zsh/custom


droot=~/.dotfiles/zsh
# Load platform-specific shortcuts
platform=`uname | awk '{print tolower($0)}'`
export PLATFORM=${platform}
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
