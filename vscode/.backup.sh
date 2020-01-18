#!/usr/bin/env bash

set -e
# set -x

# backup vscode
backup_vscode() {
	PATH_VSCODE_USER=~/Library/Application\ Support/Code/User
	echo $PATH_VSCODE_USER
	if [[ -d "$PATH_VSCODE_USER" ]]; then
		rsync -avP --exclude={globalStorage,workspaceStorage} --delete ~/Library/Application\ Support/Code/User ~/dotfiles/vscode/
	fi

	# PATH_VSCODE_USER=~/Library/Application\ Support/Code/User
	# echo $PATH_VSCODE_USER
	# if [[ -d "$PATH_VSCODE_USER" ]]; then
	# 	# copy Vs-Code files
	# 	cp -af $HOME/Library/Application\ Support/Code/User/{keybindings.json,settings.json,spellright.dict} ~/dotfiles/vscode/User
	# 	# copy snippets folder
	# 	cp -r $HOME/Library/Application\ Support/Code/User/snippets ~/dotfiles/vscode/User
	# fi

	# PATH_VSCODE_CACHEDEXTENSIONS=~/Library/Application\ Support/Code/CachedExtensions
	# echo $PATH_VSCODE_CACHEDEXTENSIONS
	# if [[ -d "$PATH_VSCODE_CACHEDEXTENSIONS" ]]; then
	# 	rsync -avP --delete ~/Library/Application\ Support/Code/CachedExtensions ~/dotfiles/vscode/
	# fi

	# PATH_VSCODE_EXTENSIONS=~/.vscode/extensions
	# echo $PATH_VSCODE_EXTENSIONS
	# if [[ -d "$PATH_VSCODE_EXTENSIONS" ]]; then
	# 	rsync -avP --delete ~/.vscode/extensions ~/dotfiles/vscode/
	# fi
}

backup_vscode_extensions () {
	echo "extensions package list" > ~/dotfiles/vscode/extensions.txt
	code --list-extensions --show-versions >> ~/dotfiles/vscode/extensions.txt
}

backup_vscode
backup_vscode_extensions