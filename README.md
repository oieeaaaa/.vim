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

To install additional plugins, place the plugin's directory inside

`~/.vim/pack/plugin/start`

Then enter the following to generate help tags:
```vim
: helptags ~/.vim/pack/plugin/start/[plugin-directory]
```


To delete a plugin, just delete its directory



To start vimwiki directly from shell:

`$ vim -c VimwikiIndex`
