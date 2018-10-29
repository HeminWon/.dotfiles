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

	# PATH_VSCODE_EXTENSIONS=~/.vscode/extensions
	# echo $PATH_VSCODE_EXTENSIONS
	# if [[ -d "$PATH_VSCODE_EXTENSIONS" ]]; then
	# 	rsync -avP --delete ~/.vscode/extensions ~/dotfiles/vscode/
	# fi
}

backup_vscode_extensions () {
	echo "extensions package list" > ~/dotfiles/vscode/extensions.txt
	path_extensions=~/.vscode/extensions
	for file in `ls $path_extensions | sort -b`
	do
    	path_package=${path_extensions}/${file}/package.json
    	if [ -f $path_package ]
    	then
        	echo -e "\r\n" >> ~/dotfiles/vscode/extensions.txt
        	echo ">>>>>>>>>>>>>>>>>>>>>>>$file" >> ~/dotfiles/vscode/extensions.txt
       	    cat $path_package >> ~/dotfiles/vscode/extensions.txt
    fi
done
}

backup_vscode
backup_vscode_extensions