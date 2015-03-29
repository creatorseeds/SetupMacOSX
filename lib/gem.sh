#!/bin/sh
sudo gem update
tools=(
  "berkshelf"
  "compass"
  "haml"
  "knife-solo"
  "rails"
  "rubygems-update"
  "sass"
)
for tool in ${tools[@]}; do
  if ! ls /Library/Ruby/Gems/*/gems/${tool}* 1> /dev/null 2>&1; then
    sudo gem install $tool
  fi
done

# Update gem
sudo update_rubygems

# Around the vagrant
# CentOS 6.6 Box
if ! ls ~/.vagrant.d/boxes/opscode-centos-6.6 1> /dev/null 2>&1; then
  vagrant box add opscode-centos-6.6 http://opscode-vm-bento.s3.amazonaws.com/vagrant/virtualbox/opscode_centos-6.6_chef-provisionerless.box
fi
