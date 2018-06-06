#!/usr/bin/env bash

if [[ ! -e /Applications/iTerm.app ]]; then
    brew cask install iterm2
else
    echo "You have installed iTerm2"
fi

defaults delete com.googlecode.iterm2
cp ~/dotfiles/iTerm/com.googlecode.iterm2.plist ~/Library/Preferences