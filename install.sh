#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

cp other/com.lightheadsw.Caffeine.plist ~/Library/Preferences/com.lightheadsw.Caffeine.plist
cp other/org.herf.Flux.plist ~/Library/Preferences/org.herf.Flux.plist
cp other/com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist
cp other/com.torusknot.SourceTreeNotMAS.plist ~/Library/Preferences/com.torusknot.SourceTreeNotMAS.plist
killall cfprefsd

rcup -f -x install.sh -x "other/*"

mkdir -p ~/.vim/backups
mkdir -p ~/.vim/colors
mkdir -p ~/.vim/swaps
mkdir -p ~/.vim/syntax
mkdir -p ~/.vim/undo

mkdir -p "$HOME/Library/Application Support/Sublime Text 3/Packages/User/"
mkdir -p "$HOME/Library/Application Support/Sublime Text 3/Packages/Colorsublime - Themes"
cp "other/sublime/Default (OSX).sublime-keymap" "$HOME/Library/Application Support/Sublime Text 3/Packages/User/Default (OSX).sublime-keymap"
cp "other/sublime/Package Control.sublime-settings" "$HOME/Library/Application Support/Sublime Text 3/Packages/User/Package Control.sublime-settings"
cp "other/sublime/Preferences.sublime-settings" "$HOME/Library/Application Support/Sublime Text 3/Packages/User/Preferences.sublime-settings"
cp "other/sublime/Ruby on Rails.sublime-settings" "$HOME/Library/Application Support/Sublime Text 3/Packages/User/Ruby on Rails.sublime-settings"
cp "other/sublime/Shell-Unix-Generic.sublime-settings" "$HOME/Library/Application Support/Sublime Text 3/Packages/User/Shell-Unix-Generic.sublime-settings"
cp "other/sublime/Textile.sublime-settings" "$HOME/Library/Application Support/Sublime Text 3/Packages/User/Textile.sublime-settings"
cp "other/sublime/SublimeLinter.sublime-settings" "$HOME/Library/Application Support/Sublime Text 3/Packages/User/SublimeLinter.sublime-settings"
cp "other/sublime/typescript.sublime-build" "$HOME/Library/Application Support/Sublime Text 3/Packages/User/typescript.sublime-build"
cp "other/sublime/Afterglow.tmTheme" "$HOME/Library/Application Support/Sublime Text 3/Packages/Colorsublime - Themes/Afterglow.tmTheme"
