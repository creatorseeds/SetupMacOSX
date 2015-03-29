#!/bin/sh
git config --system alias.lg "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
git config --system alias.lga "log --graph --all --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
git config --system color.ui auto
git config --system core.excludesfile /usr/local/etc/gitignore
git config --system core.precomposeunicode true
git config --system core.quotepath false
git config --system http.sslVerify false
git config --system push.default simple

sudo cp ./config/bashrc /etc/bashrc
cp ./config/.bash_profile ~/.bash_profile
sudo cp ./config/gitignore /usr/local/etc/gitignore
