# Extract all things
extract () {
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)      tar xjf $1              ;;
            *.tar.gz)       tar xzf $1              ;;
            *.bz2)          bunzip2 $1              ;;
            *.rar)          rar x $1                ;;
            *.gz)           gunzip $1               ;;
            *.tar)          tar xf $1               ;;
            *.tbz2)         tar xjf $1              ;;
            *.tgz)          tar xzf $1              ;;
            *.zip)          unzip $1                ;;
            *.Z)            uncompress $1           ;;
            *)              echo "'$1' cannot be extracted via extract()" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}


# Commit fast
function gg() {
    git commit -a -v -m "$*"
}

function hgg() {
    hg ci -m "$*"
}


# Find & grep
function f() {
    find ./ -name $@
}

function phgrep() {
    curdir=./
    grep -rin --include="*.php" "${1}" ${2:-$curdir}
}

function jsgrep() {
    curdir=./
    grep -rin --include="*.js" "${1}" ${2:-$curdir}
}

function algrep() {
    curdir=./
    grep -rin "${1}" ${2:-$curdir}
}

# Global installation of pip package
gpip() {
    PIP_REQUIRE_VIRTUALENV="" pip "$@"
}

# Find & kill
psf () {
    ps Ao pid,comm|awk '{match($0,/[^\/]+$/); print substr($0,RSTART,RLENGTH)": "$1}'|grep -i $1|grep -v grep
}

psk () {
    local cmd OPT
    IFS=$'\n'
    PS3='Kill which process? (q to cancel): '
    select OPT in $(fp $1); do
        if [[ $OPT =~ [0-9]$ ]]; then
            cmd=$(ps -p ${OPT##* } -o command|tail -n 1)
            if [[ "$cmd" =~ "Contents/MacOS" ]] && [[ -f /usr/local/bin/quit ]]; then
                echo "Quitting ${OPT%%:*}"
                cmd=$(echo "$cmd"| sed -E 's/.*\/(.*)\.app\/.*/\1/')
                /usr/local/bin/quit -n "$cmd"
            else
                echo "killing ${OPT%%:*}"
                kill ${OPT##* }
            fi
        fi
        break
    done
    unset IFS
}
