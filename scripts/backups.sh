#!/bin/bash

DOTFILES=$HOME/dotfiles

# backup Keyboard Maestro
backup_KeyboardMaestro() {
	cp $HOME/Library/Application\ Support/Keyboard\ Maestro/Keyboard\ Maestro\ Macro\ Stats.plist /$DOTFILES/Keyboard\ Maestro/Keyboard\ Maestro\ Macro\ Stats.plist
	cp $HOME/Library/Application\ Support/Keyboard\ Maestro/Keyboard\ Maestro\ Macros.plist /$DOTFILES/Keyboard\ Maestro/Keyboard\ Maestro\ Macros.plist
}

# backup Alfred
backup_Alfred() {
	cp -r $HOME/Library/Application\ Support/Alfred\ 3/Alfred.alfredpreferences /$DOTFILES/Alfred/Alfred.alfredpreferences
}

# backup app
backup_App() {
	brew bundle dump --describe --force --file="/$DOTFILES/applist/Brewfile"

	# All Apps
	ls -lh /Applications > $DOTFILES/applist/All_AppList

	# MAS Apps
	/usr/local/bin/mas list > $DOTFILES/applist/MAS_AppList

	# brew Apps
	/usr/local/bin/brew list > $DOTFILES/applist/Brew_AppList

	# brew cask Apps
	/usr/local/bin/brew cask list > $DOTFILES/applist//BrewCask_AppList
}

backup_AppCode() {
	PATH_PREFERENCES=~/Library/Preferences
	NAME_APPCODE=`ls $PATH_PREFERENCES | grep -E '^AppCode' | sort -V -r | head -n 1`
	PATH_APPCODE=${PATH_PREFERENCES}/${NAME_APPCODE}
	echo $PATH_APPCODE
	if [[ -d "$PATH_APPCODE" ]]; then
		rsync -avP --exclude=tasks/ $PATH_APPCODE $DOTFILES/AppCode
	fi
}

backup_GoLand() {
	PATH_PREFERENCES=~/Library/Preferences
	NAME_GOLAND=`ls $PATH_PREFERENCES | grep -E '^GoLand' | sort -V -r | head -n 1`
	PATH_GOLAND=${PATH_PREFERENCES}/${NAME_GOLAND}
	if [[ -d "$PATH_GOLAND"  ]]; then
		rsync -avP --exclude=tasks/ $PATH_GOLAND $DOTFILES/GoLand
	fi
}

#########################################################################

backup_KeyboardMaestro
backup_Alfred
backup_App
backup_AppCode
backup_GoLand

echo "The configuration file is backed up successfully"

osascript << EOF
    display notification "The configuration file is backed up successfully" with title "来自 dotfiles"
EOF
