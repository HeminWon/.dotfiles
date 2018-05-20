#!/bin/bash

DOTFILES=$HOME/.dotfiles

# backup Keyboard Maestro
cp /$HOME/Library/Application\ Support/Keyboard\ Maestro/Keyboard\ Maestro\ Macro\ Stats.plist /$DOTFILES/Keyboard\ Maestro/Keyboard\ Maestro\ Macro\ Stats.plist
cp /$HOME/Library/Application\ Support/Keyboard\ Maestro/Keyboard\ Maestro\ Macros.plist /$DOTFILES/Keyboard\ Maestro/Keyboard\ Maestro\ Macros.plist