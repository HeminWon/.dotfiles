#!/usr/bin/env bash

set -e
set -x

# backup Xcode
backup_CodeSnippets() {
	PATH_CodeSnippets=$HOME/Library/Developer/Xcode/UserData/CodeSnippets
	if [[ -d "$PATH_CodeSnippets"  ]]; then
		rsync -avP --delete --exclude=tasks/ $HOME/Library/Developer/Xcode/UserData/CodeSnippets ~/dotfiles/Xcode/
	fi
}

backup_CodeSnippets