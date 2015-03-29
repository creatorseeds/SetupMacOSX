#!/bin/sh
# Install & update Homebrew.
if [ ! -d "/usr/local/Library/Homebrew" ]; then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
brew update
brew upgrade

# External repositories
brew tap homebrew/apache
brew tap homebrew/dupes
brew tap homebrew/versions
brew tap homebrew/homebrew-php

tools=(
  "autoconf"
  "automake"
  "bash-completion"
  "--with-mysql --homebrew-apxs php56"
  "php56-mcrypt"
  "php56-apcu"
  "php56-xdebug"
  "phpmyadmin"
  "httpd24"
  "composer"
  "cowsay"
  "tcl-tk"
  "expect"
  "git"
  "git-flow"
  "git-ftp"
  "hub"
  "libtool"
  "mysql"
  "nkf"
  "node"
  "nmap"
  "pwgen"
  "rbenv"
  "rename"
  "ruby21"
  "ruby-build"
  "sl"
  "tree"
  "watch"
  "webp"
  "wget"
)
for tool in ${tools[@]}; do
  if ! ls /usr/local/Cellar/${tool}* 1> /dev/null 2>&1; then
    brew install ${tool}
  fi
done
