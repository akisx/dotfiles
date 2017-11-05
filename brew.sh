#!/bin/bash

if ! type "brew" >/dev/null 2>&1; then
    echo "Install homebrew..."
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew upgrade --cleanup

# disable auto-update in this session
export HOMEBREW_NO_AUTO_UPDATE=1

# install CUI tools
brew install git
brew install curl
brew install tree
brew install wget

brew install nodebrew

# install font Ricty
brew tap sanemat/font
brew install Caskroom/cask/xquartz
brew install ricty
cp -f /usr/local/opt/ricty/share/fonts/Ricty*.ttf ~/Library/Fonts/
fc-cache -vf

# install GUI tools
brew cask --version
brew cask install alfred
brew cask install google-chrome
brew cask install google-japanese-ime
brew cask install iterm2
brew cask install skitch
brew cask install visual-studio-code
brew cask install intellij-idea-ce