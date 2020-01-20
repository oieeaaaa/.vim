#!/bin/bash
PLUGIN_DIR=~/.vim/pack/plugins/start
printf "Generating plugin directory...\n"
mkdir -p $PLUGIN_DIR
cd $PLUGIN_DIR

# download plugins
REPOS=(
https://github.com/vim-airline/vim-airline #airline status bar
https://github.com/vimwiki/vimwiki.git #vimwiki
https://github.com/pangloss/vim-javascript.git #js syntax highlighting
https://github.com/mxw/vim-jsx.git #jsx support
https://github.com/kien/ctrlp.vim #quick navigation
https://github.com/dense-analysis/ale.git #linter
https://github.com/lumiliet/vim-twig #twig syntax
https://github.com/editorconfig/editorconfig-vim.git #editor config support
https://github.com/kien/ctrlp.vim.git #quick navigation
)

PATTERN="s/https:\/\/[\.w]*github\.com\/.+\/([[:alnum:]-]+)(\.git)?/\1/"

printf "Downloading plugin files from Github...\n"
for i in ${!REPOS[@]}; do
  echo "($(($i+1))/${#REPOS[@]}) $(sed -E $PATTERN <<< ${REPOS[$i]})"
  git clone ${REPOS[$i]} > /dev/null 2>&1
done

printf "Setting up Help Tags...\n"
PLUGINS=$(find * -maxdepth 0 -type d -print0 | xargs -0 printf '%s,')
vim -u NONE -c "set runtimepath=${PLUGINS::${#PLUGINS}-1}" -c "helptags ALL" -c q # setup helptags

printf "\n"
if [ $? -eq 0 ]; then
    printf "Setup completed successfully.\n"
else
    printf "Setup did not complete successfully.\n"
fi
