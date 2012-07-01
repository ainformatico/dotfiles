#!/usr/bin/env bash

# var definitions
THIS=`pwd`
# pull changes from main repo
git pull origin master
# pull changes for each submodule
git submodule init
git submodule update
git submodule foreach git pull origin master

# update myvim
cd .vim
./update.sh
# return to installation dir
cd $THIS

#only for rbenv
RBENV_PLUGINS=.rbenv/plugins
cd "$RBENV_PLUGINS/ruby-build" && git pull origin master
cd $THIS
cd "$RBENV_PLUGINS/rbenv-gemset" && git pull origin master

#return to main dir
cd  $THIS
#reload the new configuration
exec $SHELL

echo -e "\n\nDone.\n\n"
