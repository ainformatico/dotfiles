#!/usr/bin/env bash

# var definitions
TMPDIR=/tmp
HOMEDIR=~
THIS=`pwd`
DATE=`date +%Y%m%d%H%M%S` # yyyymmddhhmmss
INTERACTIVE=

# install script
# init git submodules
# create symlinks and replace old files

for i in $*
do
  case $i in
    -a) # install all
      ./_rbenv-install.sh # install rbenv
    ;;
    -i) # set interactive mode
      INTERACTIVE=-i
    ;;
  esac
done

# init git submodules
git submodule init
git submodule update

# install myvim
cd .vim
./install.sh
./update.sh
# return to installation dir
cd $THIS

# install myvcs
cd .vcs
./install.sh $INTERACTIVE
# return to installation dir
cd $THIS

# copy or replace
for ITEM in `ls -A . | grep -vE "^(_|(install|update)\.sh|\.git|README\.md|license)"`
do
  if [ -e "$HOMEDIR/$ITEM" ]
  then
    # move existent item to $TMPDIR dir
    mv "$HOMEDIR/$ITEM" "$TMPDIR/$ITEM.$DATE"
    echo "Moved '$HOMEDIR/$ITEM' to '$TMPDIR/$ITEM.$DATE'"
  fi
  # create symlinks to new items
  ln -s "$THIS/$ITEM" "$HOMEDIR/$ITEM"
  echo "Created synlink to $HOMEDIR/$ITEM"
done

# nautilus-scripts only
GNOME2_DIR="$HOMEDIR/.gnome2"
NAUTILUS_SCRIPTS="nautilus-scripts"
# check for gnome2 dir
if [ -d $GNOME2_DIR ]
then
  # check for scripts dir
  if [ -d "$GNOME2_DIR/$NAUTILUS_SCRIPTS" ]
  then
    # move the old scripts
    mv "$GNOME2_DIR/$NAUTILUS_SCRIPTS" "$TMPDIR/$NAUTILUS_SCRIPTS.$DATE"
    # create the symlink to the new ones
    ln -s "$THIS/_$NAUTILUS_SCRIPTS" "$GNOME2_DIR/$NAUTILUS_SCRIPTS"
  fi
fi

# reload the new configuration
exec $SHELL

echo -e "\n\nDone.\n\n"
