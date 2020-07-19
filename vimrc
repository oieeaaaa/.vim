" ====================== 
" PLUGINS 
" ======================
call plug#begin('~/.vim/plugged')
" Main plugins
Plug 'dense-analysis/ale'
Plug 'preservim/nerdcommenter'
Plug 'tomasiser/vim-code-dark'
Plug 'editorconfig/editorconfig-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Some specific syntax plugins
Plug 'dart-lang/dart-vim-plugin'
Plug 'natebosch/vim-lsc'
Plug 'natebosch/vim-lsc-dart'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
call plug#end()

" ====================== 
" GLOBALS 
" ======================
set nocompatible
filetype indent plugin on
syntax on " enable syntax processing
set shiftwidth=2 " number of spaces for each indent step
set tabstop=2 softtabstop=2 " number of visual spaces of tab character
set expandtab " convert tab to spaces
set showmatch " highlight matching brackets and parentheses
set autoindent " enable auto indent
set colorcolumn=100 " set character limit per line
set splitright " Split horizontally in right direction
set splitbelow " Split verticall in bottom direction
set nrformats= "Treat all numerals as decimal
set noro " Default to not read-only in vimdiff
set diffopt+=iwhite " avoid whitespace comparison when diffing files
set backspace=indent,eol,start " to make backspacing work
set laststatus=2

" ====================== 
" NAVIGATION
" ======================
set path+=** " Search down into subfolders
set wildignore+=**/node_modules/** " Ignored files
let g:netrw_localrmdir='rm -r' " Removed non-empty directory

" ====================== 
" DISPLAY 
" ======================
set t_Co=256
set t_ut=
colorscheme codedark
set hidden
set enc=utf-8
set cursorline " visually highlight current line
set relativenumber " show relative line numbers
set number " show line numbers (hybrid line numbers when paired with relativenumber option)
set wildmenu " Display all matching files on tab complete
set colorcolumn=80 " set a line guide to limit 80 characters per line
hi CursorLine ctermbg=235
hi ColorColumn ctermbg=235
hi Normal guibg=NONE ctermbg=NONE
let g:netrw_liststyle = 3 " default to tree stucture
let g:flutter_show_log_on_run = 0 " Disable flutter logging on seperate window

" ====================== 
" KEY REMAPPING 
" ======================
set pastetoggle=<F10>
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
nmap <Space> za
nmap <c-w>== :set ead=hor ea noea<CR>
nmap <c-w>=- :set ead=ver ea noea<CR>
nmap <c-k> :edit .<CR>
nmap <c-a>d :ALEGoToDefinition<CR>
nmap <c-a>v :ALEGoToDefinition -vsplit<CR>
nmap <c-a>f :ALEFindReferences<CR>
nnoremap <c-t> :tab split<CR>
nmap <silent> <C-l> <Plug>(jsdoc)
nmap <to> :tab split<CR>

" ====================== 
" PLUGINS SPECIFIC CONFIGS
" ======================
" ALE
let g:ale_fix_on_save = 1
let g:dart_style_guide = 2
let b:ale_linters = ['prettier', 'eslint', 'stylelint']
let g:ale_fixers = {
\   'javascript': ['prettier', 'eslint'],
\   'css': ['stylelint', 'prettier', 'eslint'],
\}

" DART/FLUTTER
let g:lsc_auto_map = v:true
let g:dart_format_on_save = 1
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" JS
let g:vim_jsx_pretty_highlight_close_tag = 1

" ====================== 
" SNIPPETS
" ======================
nnoremap ,html :-1read ${HOME}/.vim/templates/skeleton.html<CR>3jcit
nnoremap ,react :-1read ${HOME}/.vim/templates/skeleton-react.js<CR>3jf"li
