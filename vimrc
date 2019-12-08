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

hi Normal guibg=NONE ctermbg=NONE
hi CursorLine ctermbg=232
hi ColorColumn ctermbg=0

let g:airline_powerline_fonts = 1
let g:vimwiki_list = [{'path': '~/notes',
                        \ 'syntax': 'markdown', 'ext': '.md'}]

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
