#!/usr/bin/env bash

set -e
# set -x

# backup AppCode
backup_AppCode() {
	NAME_APPCODE=`ls ~/Library/Preferences | grep -E '^AppCode' | sort -V -r | head -n 1`
	if [ ! ${NAME_APPCODE} ]; then
		exit
	fi
	PATH_APPCODE=~/Library/Preferences/${NAME_APPCODE}
	echo $PATH_APPCODE
	if [[ -d "$PATH_APPCODE" ]]; then
		rsync -avP --delete --exclude=tasks/ $PATH_APPCODE ~/dotfiles/AppCode
	fi
}

backup_AppCode