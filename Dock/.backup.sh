#!/usr/bin/env bash

set -e
# set -x

# backup Dock
backup_Dock() {
	NAME_DOCKS=`ls ~/Library/Preferences | grep -E '^com.apple.dock.' | sort -V -r`
	for NAME_DOCK in $NAME_DOCKS
		do
			PATH_DOCK=~/Library/Preferences/$NAME_DOCK
			if [[ -f "$PATH_DOCK" ]]; then
				cp -R $PATH_DOCK ~/dotfiles/Dock/$NAME_DOCK
			fi
		done
}

backup_Dock