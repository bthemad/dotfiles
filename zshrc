droot=~/.dotfiles/zsh

# Load common files
. ${droot}/config
. ${droot}/aliases

# Load platform-specific shortcuts
platform=`uname | awk '{print tolower($0)}'`
export PLATFORM=${platform}
if [ -f ${droot}/platform/${platform} ]; then
    . ${droot}/platform/${platform}
fi

# Load machine-specific files, if presented
hostname=`hostname -s`
if [ -f ${droot}/hostname/${hostname} ]; then
    . ${droot}/hostname/${hostname}
fi
