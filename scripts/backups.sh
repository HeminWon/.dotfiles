#!/bin/bash

DOTFILES=$HOME/dotfiles

# backup Keyboard Maestro
cp $HOME/Library/Application\ Support/Keyboard\ Maestro/Keyboard\ Maestro\ Macro\ Stats.plist /$DOTFILES/Keyboard\ Maestro/Keyboard\ Maestro\ Macro\ Stats.plist
cp $HOME/Library/Application\ Support/Keyboard\ Maestro/Keyboard\ Maestro\ Macros.plist /$DOTFILES/Keyboard\ Maestro/Keyboard\ Maestro\ Macros.plist

# backup Alfred
cp -r $HOME/Library/Application\ Support/Alfred\ 3/Alfred.alfredpreferences /$DOTFILES/Alfred/Alfred.alfredpreferences

# backup app
brew bundle dump --describe --force --file="/$DOTFILES/applist/Brewfile"

# All Apps
ls -lh /Applications > $DOTFILES/applist/All_AppList

# MAS Apps
/usr/local/bin/mas list > $DOTFILES/applist/MAS_AppList

# brew Apps
/usr/local/bin/brew list > $DOTFILES/applist/Brew_AppList

# brew cask Apps
/usr/local/bin/brew cask list > $DOTFILES/applist//BrewCask_AppList


echo "The configuration file is backed up successfully"

osascript << EOF
    display notification "The configuration file is backed up successfully" with title "来自 dotfiles"
EOF