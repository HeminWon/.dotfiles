#!/usr/bin/env bash

set -e

# backup app
backup_App() {
	/usr/local/bin/brew bundle dump --describe --force --file="~/dotfiles/applist/Brewfile"

	# All Apps
	ls /Applications | sort -b > ~/dotfiles/applist/All_AppList.txt

	# MAS Apps
	/usr/local/bin/mas list | sort -b > ~/dotfiles/applist/MAS_AppList.txt

	# brew Apps
	/usr/local/bin/brew list | sort -b > ~/dotfiles/applist/Brew_AppList.txt

	# brew cask Apps
	/usr/local/bin/brew cask list | sort -b > ~/dotfiles/applist/BrewCask_AppList.txt

	# screen saver
	ls ~/Library/Screen\ Savers | sort -b > ~/dotfiles/applist/Savers_AppList.txt
}

backup_App