#!/usr/bin/env bash

set -x
set -e

sync_Xbar() {
	stow --dir=$HOME/dotfiles/xbar --target=$HOME/Library/Application\ Support/xbar/plugins
	# cp -r ~/dotfiles/xbar ~/Library/Application\ Support/xbar/plugins
}

# defaults delete com.apple.dock
sync_Xbar
killall xbar