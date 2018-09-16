#!/bin/bash
PLUGIN_DIR=~/.vim/pack/plugins/start
printf "Generating plugin directory...\n"
mkdir -p $PLUGIN_DIR
cd $PLUGIN_DIR

# download plugins
printf "Downloading plugin files from Github\n\n"
git clone https://github.com/leafgarland/typescript-vim #typscript syntax
git clone https://github.com/vim-airline/vim-airline #airline status bar
git clone https://github.com/vimwiki/vimwiki.git #vimwiki

vim -c "helptags $PLUGIN_DIR" # setup helptags
