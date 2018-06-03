#!/bin/bash

set -e
set -x

# backup Goland
backup_GoLand() {
	NAME_GOLAND=`ls ~/Library/Preferences | grep -E '^GoLand' | sort -V -r | head -n 1`
	PATH_GOLAND=~/Library/Preferences/${NAME_GOLAND}
	if [[ -d "$PATH_GOLAND"  ]]; then
		rsync -avP --exclude=tasks/ $PATH_GOLAND ~/dotfiles/GoLand
	fi
}

backup_GoLand