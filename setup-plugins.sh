#!/bin/bash
printf "Generating plugin directory...\n"
mkdir -p ~/.vim/pack/plugins/start
cd ~/.vim/pack/plugins/start

# download plugins
printf "Downloading plugin files from Github\n\n"
git clone https://github.com/leafgarland/typescript-vim #typscript syntax
git clone https://github.com/vim-airline/vim-airline #airline status bar
git clone https://github.com/vimwiki/vimwiki.git #vimwiki

vim -c helptags ALL # setup helptags
