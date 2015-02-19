# Commit fast
ggg() {
    git commit -a -v -m "$*"
}

hgg() {
    hg ci -m "$*"
}


# Find & grep
phgrep() {
    curdir=./
    grep -rin --include="*.php" "${1}" ${2:-$curdir}
}

jsgrep() {
    curdir=./
    grep -rin --include="*.js" "${1}" ${2:-$curdir}
}

algrep() {
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
