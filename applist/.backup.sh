#!/bin/bash

set -e
set -x

# backup app
backup_App() {
	brew bundle dump --describe --force --file="~/dotfiles/applist/Brewfile"

	# All Apps
	ls /Applications > ~/dotfiles/applist/All_AppList

	# MAS Apps
	/usr/local/bin/mas list > ~/dotfiles/applist/MAS_AppList

	# brew Apps
	/usr/local/bin/brew list > ~/dotfiles/applist/Brew_AppList

	# brew cask Apps
	/usr/local/bin/brew cask list > ~/dotfiles/applist//BrewCask_AppList
}

backup_App