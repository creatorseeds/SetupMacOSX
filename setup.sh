#!/bin/sh
cd `dirname $0`
# コマンドラインツールをインストールします。
if [ ! -d "/Library/Developer/CommandLineTools" ]; then
  xcode-select --install
else
source ./lib/init.sh
source ./lib/brew.sh
source ./lib/cask.sh
source ./lib/backup.sh
source ./lib/git.sh
source ./lib/lamp.sh
source ./lib/gem.sh
fi
