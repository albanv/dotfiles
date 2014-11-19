#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

cp --no-clobber other/com.lightheadsw.Caffeine.plist ~/Library/Preferences/com.lightheadsw.Caffeine.plist
cp --no-clobber other/org.herf.Flux.plist ~/Library/Preferences/org.herf.Flux.plist
cp --no-clobber other/com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist
cp --no-clobber other/com.torusknot.SourceTreeNotMAS.plist ~/Library/Preferences/com.torusknot.SourceTreeNotMAS.plist
killall cfprefsd

rcup -f -x install.sh -x "other/*"

mkdir -p ~/.vim/backups
mkdir -p ~/.vim/colors
mkdir -p ~/.vim/swaps
mkdir -p ~/.vim/syntax
mkdir -p ~/.vim/undo

mkdir -p "~/Library/Application Support/Sublime Text 3/Packages/User/"
cp --no-clobber "other/sublime/*" "~/Library/Application Support/Sublime Text 3/Packages/User/"
