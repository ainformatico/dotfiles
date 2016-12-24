export EDITOR=vim

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

if [ -f ~/.private ]; then
  source ~/.private
fi

eval "$(rbenv-vars)"

export NVM_DIR="/usr/local/opt/nvm"

if [ -d $NVM_DIR ]; then
  source $NVM_DIR/nvm.sh
fi
