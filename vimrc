" ====================== 
" GLOBALS 
" ======================
colorscheme molokai
set nocompatible
filetype plugin on
syntax enable " enable syntax processing
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

" ====================== 
" DEFAULT 
" ======================
let g:airline_powerline_fonts = 1
let g:vimwiki_list = [{'path': '~/notes', 'syntax': 'markdown', 'ext': '.md'}]

set nrformats= "Treat all numerals as decimal

hi CursorLine ctermbg=237
hi Normal guibg=NONE ctermbg=NONE


" ====================== 
" NAVIGATION
" ======================
let Tlist_Ctags_Cmd='/usr/local/bin/ctags-exuberant' " re-sourcing ctags to ctags-exuberant path
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'

" ====================== 
" DISPLAY 
" ======================
let g:netrw_liststyle= 3 " default to tree stucture

set colorcolumn=80 " set a line guide to limit 80 characters per line

hi ColorColumn ctermbg=0

" ====================== 
" LINTER 
" ======================
let b:ale_fixers = ['prettier', 'eslint', 'stylelint']


" PLUGIN CONFIGS
" =============

" ctrlP
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

nmap <Space> za
