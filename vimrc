" ====================== 
" PLUGINS 
" ======================
" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale'
Plug 'editorconfig/editorconfig-vim'
Plug 'preservim/nerdcommenter'

" Initialize plugin system
call plug#end()

" ====================== 
" GLOBALS 
" ======================
colorscheme gruvbox
set background=dark    " Setting dark mode
set nocompatible
filetype plugin on
syntax on " enable syntax processing
set shiftwidth=2 " number of spaces for each indent step
set tabstop=2 softtabstop=2 " number of visual spaces of tab character
set expandtab " convert tab to spaces
set showmatch " highlight matching brackets and parentheses
set autoindent " enable auto indent
set cursorline " visually highlight current line
set relativenumber " show relative line numbers
set number " show line numbers (hybrid line numbers when paired with relativenumber option)
set foldmethod=marker foldmarker={,} foldlevel=10 nofoldenable 
set colorcolumn=100 " set character limit per line
set backspace=indent,eol,start
set splitright
set splitbelow
set nrformats= "Treat all numerals as decimal
set noro " Default to not read-only in vimdiff
set paste

hi CursorLine ctermbg=237
hi Normal guibg=NONE ctermbg=NONE

" ====================== 
" NAVIGATION
" ======================
set path+=** " Search down into subfolders
set wildignore+=**/node_modules/** " Ignored files

" ====================== 
" DISPLAY 
" ======================
set wildmenu " Display all matching files on tab complete
set colorcolumn=80 " set a line guide to limit 80 characters per line
hi ColorColumn ctermbg=0

let g:netrw_liststyle= 3 " default to tree stucture

" ====================== 
" KEY REMAPPING 
" ======================
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
nmap <Space> za

" ====================== 
" LINTERS
" ======================
let b:ale_fixers = ['prettier', 'eslint', 'stylelint']
let b:ale_linters = ['prettier', 'eslint', 'stylelint', 'standard']
let g:ale_fix_on_save = 1

" ====================== 
" SNIPPETS
" ======================
nnoremap ,html :-1read ${HOME}/.vim/templates/skeleton.html<CR>2jwf>a
