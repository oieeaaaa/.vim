# .vim

My personal vim configuration settings.

## Pre-requisites
For the plugin setup script to work, `git` needs to be
installed on your machine.

## Plugins
* vim-airline (better statusbar)
* vimwiki (for notetaking)
* typescript-vim (.ts support)

## Usage

On your home directory: 

```bash
$ git clone https://github.com/leondzn/.vim.git
$ cd .vim
$ chmod u+x setup-plugins.sh
$ ./setup-plugins.sh
```

## Note on OSX

The setup script for helptags fail on OSX because it has different binaries than of GNU ~~and that OSX bash is weird and stupid~~
so here's a workaround to get the script working:

1. Install `findutils` which contains `gfind` 
  ```
  brew install findutils
  ```
2. Edit the following lines:
  ```diff
  - PLUGINS=$(find * -maxdepth 0 -type d -printf '%p,')
  + PLUGINS=$(gfind * -maxdepth 0 -type d -printf '%p,')
  ```
  ```diff
  - vim -u NONE -c "set runtimepath=${PLUGINS::-1}" -c "helptags ALL" -c q # setup helptags
  + vim -u NONE -c "set runtimepath=${PLUGINS::${#PLUGINS}-1}" -c "helptags ALL" -c q # setup helptags
  ```

## Adding plugins

To install additional plugins, place the plugin's directory inside

`~/.vim/pack/plugin/start`

Then enter the following to generate help tags:
```vim
: helptags ~/.vim/pack/plugin/start/[plugin-directory]
```


To delete a plugin, just delete its directory



To start vimwiki directly from shell:

`$ vim -c VimwikiIndex`
