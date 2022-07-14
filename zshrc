# zmodload zsh/zprof
DISABLE_MAGIC_FUNCTIONS=true

source ~/.antigen/antigen.zsh
platform=`uname | awk '{print tolower($0)}'`
hostname=`hostname -s`
droot=~/.dotfiles/zsh

# Homebrew zsh-completions
if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

    autoload -Uz compinit
    compinit
fi

# Let's plug in our very custom completions
if [ -d ${droot}/completions ]; then
    fpath=(${droot}/completions $fpath)
fi

antigen use oh-my-zsh

antigen bundles <<EOBUNDLES
    git
    python
    brew
EOBUNDLES

antigen apply

# My customizations
## All custom scripts
if [ -d ${droot}/custom ]; then
  for file in ${droot}/custom/*.zsh; do
    source $file
  done
fi

## Load platform-specific shortcuts
if [ -f ${droot}/platform/${platform}.zsh ]; then
    source ${droot}/platform/${platform}.zsh
fi


## Load machine-specific files, if presented
if [ -f ${droot}/hostname/${hostname}.zsh ]; then
    source ${droot}/hostname/${hostname}.zsh
fi

## Finally load env file
if [ -f ${droot}/env.zsh ]; then
    source ${droot}/env.zsh
fi

## Install fzf for Ctrl+R
if [ -f ~/.fzf.zsh ]; then
    source ~/.fzf.zsh
fi
# zprof
