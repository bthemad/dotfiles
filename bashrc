. ~/.dotfiles/bash/env
. ~/.dotfiles/bash/config
. ~/.dotfiles/bash/aliases

# Load platform-specific shortcuts
platform=`uname`
if [ ${platform} = "Darwin" ]; then
    . ~/.dotfiles/bash/mac
fi

if [ ${platform} = "Linux" ]; then
    . ~/.dotfiles/bash/linux
fi