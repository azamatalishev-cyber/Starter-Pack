#!/bin/bash
#
# Install all the things with Homebrew, Casks and a Brewfile
#

# If Homebrew is not installed
if ! which brew > /dev/null; then
     # Install Homebrew 
     /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi;

# Update brew
brew update

# Install everything in Brewfile
brew bundle

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#Remove junk fom dock
dockutil --remove 'Safari'
dockutil --remove 'Mail'
dockutil --remove 'FaceTime'
dockutil --remove 'Maps'
dockutil --remove 'Photos'
dockutil --remove 'Contacts'
dockutil --remove 'Calendar'
dockutil --remove 'Reminders'
dockutil --remove 'Notes'
dockutil --remove 'Music'
dockutil --remove 'Podcasts'
dockutil --remove 'TV'
dockutil --remove 'News'
dockutil --remove 'App Store'

#Add !junk to dock
dockutil --add '/Applications/iTerm.app'
dockutil --add '/Applications/Slack.app'
dockutil --add '/Applications/Spotify.app'
dockutil --add '/Applications/Google Chrome.app'
dockutil --add '/Applications/Flux.app'
dockutil --add '/Applications/PyCharm.app'
dockutil --add '/Applications/Sublime Text.app'



