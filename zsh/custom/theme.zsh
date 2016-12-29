autoload -Uz vcs_info

zstyle ':vcs_info:*' enable git hg svn                  # only git, hg and svn
zstyle ':vcs_info:*:prompt:*' check-for-changes true    # can be slower
zstyle ':vcs_info:*:prompt:*' unstagedstr "*"           # unstaged cause "*"
zstyle ':vcs_info:*:prompt:*' stagedstr "+"             # staged cause "+"
zstyle ':vcs_info:*:prompt:*' actionformats "(%b%c%u:%a)" # format for actions
zstyle ':vcs_info:*:prompt:*' formats "(%b%c%u)"        # default format
zstyle ':vcs_info:*:prompt:*' nvcsformats "no"          # Set answer to "no" if we're not in repo

function venv_info() {
    [ $VIRTUAL_ENV ] && echo '('`basename $VIRTUAL_ENV`') '
}

function precmd() {
    vcs_info 'prompt'
    if [[ (-n $vcs_info_msg_0_) && ($vcs_info_msg_0_ != no)]]; then
        PROMPT="$(venv_info)%~ ${vcs_info_msg_0_} $ "
    else
        PROMPT=$(venv_info)'%~ $ '
    fi
}

export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;32'
