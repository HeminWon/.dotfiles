#!/bin/bash

set -e

# backup Keyboard Maestro
backup_KeyboardMaestro() {
	cp $HOME/Library/Application\ Support/Keyboard\ Maestro/Keyboard\ Maestro\ Macro\ Stats.plist ~/dotfiles/Keyboard\ Maestro/Keyboard\ Maestro\ Macro\ Stats.plist
	cp $HOME/Library/Application\ Support/Keyboard\ Maestro/Keyboard\ Maestro\ Macros.plist ~/dotfiles/Keyboard\ Maestro/Keyboard\ Maestro\ Macros.plist
}

backup_KeyboardMaestro