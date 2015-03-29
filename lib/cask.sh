#!/bin/sh
# Install Homebrew Cask
if [ ! -d "/opt/homebrew-cask" ]; then
  brew install caskroom/cask/brew-cask
fi

# External repository
# For Sublime Text 3
brew tap caskroom/versions

apps=(
  "adobe-creative-cloud"
  "adobe-reader"
  "appcode"
  "dropbox"
  "filezilla"
  "firefox"
  "github"
  "google-chrome"
  "google-japanese-ime"
  "integrity"
  "java"
  "language-switcher"
  "phpstorm"
  "rubymine"
  "sequel-pro"
  "skype"
  "sublime-text3"
  "vagrant"
  "virtualbox"
  "vlc"
)
for app in ${apps[@]}; do
  if [ ! -d "/opt/homebrew-cask/Caskroom/$app" ]; then
    brew cask install ${app}
  fi
done
