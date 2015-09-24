function vundle-init () {
  if [ ! -d ~/.vim/bundle/Vundle.vim/ ]
  then
    mkdir -p ~/.vim/bundle/Vundle.vim/
  fi

  if [ ! -d ~/.vim/bundle/Vundle.vim/.git ] && [ ! -f ~/.vim/bundle/Vundle.vim/.git ]
  then
    git clone http://github.com/ForkBackups/vundle.git ~/.vim/bundle/vundle
    echo "\n\tRead about vim configuration for vundle at git@github.com:ForkBackups/vundle\n"
  fi
}

function vundle () {
  vundle-init
  vim -c "execute \"PluginInstall\" | qa"
}

function vundle-update () {
  vundle-init
  vim -c "execute \"PluginInstall!\" | qa"
}

function vundle-clean () {
  vundle-init
  vim -c "execute \"PluginClean!\" | qa"
}
