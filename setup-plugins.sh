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

printf "\nSetting up Help Tags...\n"
PLUGINS=$(find * -maxdepth 0 -type d -printf '%p,')

vim -u NONE -c "set runtimepath=${PLUGINS::-1}" -c "helptags ALL" -c q # setup helptags
if [ $? -eq 0 ]; then
    printf "Setup completed successfully.\n"
else
    printf "Setup did not complete successfully.\n"
fi
