#!/usr/bin/env bash

set -e
set -x

# backup iTerm
backup_iTerm() {
	NAME_ITERM=`ls ~/Library/Preferences | grep -E '^com.googlecode.iterm' | sort -V -r | head -n 1`
	if [ ! ${NAME_ITERM} ]; then
		exit
	fi
	PATH_ITERM=~/Library/Preferences/$NAME_ITERM
	if [[ -f "$PATH_ITERM" ]]; then
		cp -R $PATH_ITERM ~/dotfiles/iTerm/$NAME_ITERM
	fi
}

backup_iTerm