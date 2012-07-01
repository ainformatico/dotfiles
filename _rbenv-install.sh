#!/usr/bin/env bash

# rbenv only
git submodule add git://github.com/sstephenson/rbenv.git .rbenv
RBENV_PLUGINS=.rbenv/plugins
mkdir -p $RBENV_PLUGINS
git clone git://github.com/sstephenson/ruby-build.git "$RBENV_PLUGINS/ruby-build"
git clone git://github.com/jamis/rbenv-gemset.git "$RBENV_PLUGINS/rbenv-gemset"
