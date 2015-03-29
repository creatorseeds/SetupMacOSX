#!/bin/sh
# Make the ".ssh" directory
if ! ls ~/.ssh 1> /dev/null 2>&1; then
  mkdir ~/.ssh && chmod 700 ~/.ssh
fi
