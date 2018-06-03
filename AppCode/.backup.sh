#!/bin/bash

set -e
set -x

# backup AppCode
backup_AppCode() {
	NAME_APPCODE=`ls ~/Library/Preferences | grep -E '^AppCode' | sort -V -r | head -n 1`
	PATH_APPCODE=~/Library/Preferences/${NAME_APPCODE}
	echo $PATH_APPCODE
	if [[ -d "$PATH_APPCODE" ]]; then
		rsync -avP --exclude=tasks/ $PATH_APPCODE ~/dotfiles/AppCode
	fi
}

backup_AppCode