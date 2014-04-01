#!/bin/bash
rsync \
    --recursive \
    --rsh=ssh \
    --delete \
    --force \
    --exclude-from=/Users/alexander.kudryashov/.rsync_exclude \
    ./src/ \
    dev:~/

# Debug options
    # --dry-run \
    # --verbose \
    # --stats \
    # --itemize-changes \
