" ====================== 
" PLUGINS 
" ======================
" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

"Plug 'morhetz/gruvbox'
Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale'
Plug 'editorconfig/editorconfig-vim'
Plug 'preservim/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'tomasiser/vim-code-dark'

" Initialize plugin system
call plug#end()
" ====================== 
" GLOBALS 
" ======================
"let g:gruvbox_italic=1
let g:airline_theme = 'codedark'
colorscheme codedark
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
set diffopt+=iwhite " avoid whitespace comparison when diffing files
set redrawtime=5000
set hlsearch
set laststatus=2

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
hi CursorLine ctermbg=235
hi ColorColumn ctermbg=235
hi Normal guibg=NONE ctermbg=NONE

let g:netrw_liststyle= 3 " default to tree stucture

" ====================== 
" KEY REMAPPING 
" ======================
set pastetoggle=<c-s-p>
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
nnoremap <CR> :noh<CR><CR>

" ====================== 
" LINTERS
" ======================
let g:ale_fix_on_save = 1
let b:ale_linters = ['prettier', 'eslint', 'stylelint']
let g:ale_fixers = {
\   'javascript': ['prettier', 'eslint'],
\   'css': ['stylelint', 'prettier', 'eslint'],
\}

" ====================== 
" SNIPPETS
" ======================
nnoremap ,html :-1read ${HOME}/.vim/templates/skeleton.html<CR>3jcit
nnoremap ,react :-1read ${HOME}/.vim/templates/skeleton-react.js<CR>3jf"li
