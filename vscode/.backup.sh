#!/usr/bin/env bash

set -e
# set -x

# backup vscode
backup_vscode() {
	PATH_VSCODE_USER=~/Library/Application\ Support/Code/User
	echo $PATH_VSCODE_USER
	if [[ -d "$PATH_VSCODE_USER" ]]; then
		rsync -avP --delete ~/Library/Application\ Support/Code/User ~/dotfiles/vscode/
	fi

	PATH_VSCODE_CACHEDEXTENSIONS=~/Library/Application\ Support/Code/CachedExtensions
	echo $PATH_VSCODE_CACHEDEXTENSIONS
	if [[ -d "$PATH_VSCODE_CACHEDEXTENSIONS" ]]; then
		rsync -avP --delete ~/Library/Application\ Support/Code/CachedExtensions ~/dotfiles/vscode/
	fi
}

backup_vscode