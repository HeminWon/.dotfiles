#!/bin/bash

set -e
set -x

# backup Alfred
backup_Alfred() {
	cp -r $HOME/Library/Application\ Support/Alfred\ 3/Alfred.alfredpreferences ~/dotfiles/Alfred/Alfred.alfredpreferences
}

backup_Alfred