" mattgirv's .vimrc - 11/04/2011
set nocompatible
set expandtab
set showcmd
" use upper case and search become case sensitive
set ignorecase
set smartcase
" line numbers 
set number
" formatting options
set textwidth=0
set wrapmargin=0
set formatoptions=crt
set nowrap
set shiftwidth=2
set tabstop=2
" interface
set wildmenu
" completion menus
highlight Pmenu ctermfg=0 ctermbg=3
highlight PmenuSel ctermfg=0 ctermbg=7
" general
set hlsearch
set incsearch
set autoindent
syntax on
    if &diff
        syntax off
    endif
" auto switch to folder where editing file
autocmd BufEnter * cd %:p:h
set shortmess=I
set backspace=start,indent,eol
filetype plugin on
set completeopt=longest,menuone
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
  \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
  \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
