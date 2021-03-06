autoload -U zmv

####################
## Autocompletion ##
####################
setopt EXTENDED_GLOB                # Extended globbing with ^ etc.
setopt GLOB_DOTS                    # Leading dots not required for globbing
setopt CDABLE_VARS                  # Expand arguments for cd, like they are with ~
fignore=(DS_Store $fignore)         # Ignore DS_Store during completion
# Configuring the completion
# Use some cache
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh_cache
# Try complete, then do extended and substring, then do correction
zstyle ':completion:*' completer _complete _complete:-extended _complete:-substring _correct
# Extended one. Do case-insensitive and _,+,- are special, so p_h => public_html
zstyle ':completion:*:complete-extended:*' matcher-list 'm:{a-z}={A-Z}' 'r:|[+._-]=*'
# Do some substrings
zstyle ':completion:*:complete-substring:*' matcher-list 'm:{a-z}={A-Z} l:|=**'

# Tweak completion list
zstyle ':completion:*' format '%B--- %d%b'
zstyle ':completion:*:descriptions'    format $'Completing %B%d%b'
zstyle ':completion:*:messages' format '%B%U--- %d%u%b'
zstyle ':completion:*:warnings' format "%B--- Just nothing...%b"
zstyle ':completion:*' group-name ''

# let's tune some colors
zstyle ':completion:*' list-colors 'rs=0:di=00;34:ln=00;35:hl=44;37:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=30;43:st=37;44:ex=00;31:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.lzma=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.dz=01;31:*.gz=01;31:*.bz2=01;31:*.bz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.rar=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.axv=01;35:*.anx=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.axa=00;36:*.oga=00;36:*.spx=00;36:*.xspf=00;36:'
# we like menus
zstyle ':completion:*' menu select=0


#############
## History ##
#############
export HISTFILE=~/.zsh_history
export HISTSIZE=10500
export SAVEHIST=10000
setopt APPEND_HISTORY               # Don't rewrite, append
setopt INC_APPEND_HISTORY           # Append just after execution
setopt SHARE_HISTORY                # Share history immediately between sessions
setopt HIST_IGNORE_DUPS             # Don't save dups
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_SAVE_NO_DUPS            # Replace old entries with new ones
setopt HIST_REDUCE_BLANKS           # Tidy line before save
setopt NO_HIST_BEEP                 # Don't like chatty shells
setopt HIST_NO_STORE                # Don't store history calls
setopt HIST_VERIFY                  # Don't execute, just expand


################
## Navigation ##
################
setopt AUTO_PUSHD                   # Automatically add dirs to stack
setopt PUSHD_IGNORE_DUPS            # Don't include duplicates in stack
setopt PUSHD_SILENT                 # Don't print stack after push and pop
setopt PUSHD_TO_HOME                # Call to pushd without params leads to ~
export DIRSTACKSIZE=15


##########
## Misc ##
##########
setopt NO_BEEP                      # Silence is beautiful
setopt AUTO_CD                      # Change directory just by it's name
setopt CORRECT                      # Correct misprints
setopt NO_CORRECT_ALL               # Try to correct even arguments
# setopt NOCLOBBER                    # Prevent from accidentally overwriting a file

# Setting locale
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
