#!/usr/bin/env bash

set -x
set -e

sync_Dock() {
	NAME_DOCKS=`ls ~/dotfiles/Dock | grep -E '^com.apple.dock.' | sort -V -r`
	for NAME_DOCK in $NAME_DOCKS
		do
			PATH_DOCK=~/dotfiles/Dock/$NAME_DOCK
			if [[ -f "$PATH_DOCK" ]]; then
				cp -Rf $PATH_DOCK ~/Library/Preferences/$NAME_DOCK
			fi
		done
}

# defaults delete com.apple.dock
sync_Dock
killall Dock
killall Dock