#!/usr/bin/env bash

set -e

# backup app
backup_App() {
	/usr/local/bin/brew bundle dump --describe --force --file="~/dotfiles/applist/Brewfile"

	# All Apps
	ls /Applications | sort -b > ~/dotfiles/applist/All_AppList

	# MAS Apps
	/usr/local/bin/mas list | sort -b > ~/dotfiles/applist/MAS_AppList

	# brew Apps
	/usr/local/bin/brew list | sort -b > ~/dotfiles/applist/Brew_AppList

	# brew cask Apps
	/usr/local/bin/brew cask list | sort -b > ~/dotfiles/applist//BrewCask_AppList
}

backup_App