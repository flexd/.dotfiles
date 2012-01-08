set tabstop=2
set expandtab
set shiftwidth=2
set fileencoding=utf-8
set encoding=utf-8
set termencoding=utf-8
set showcmd
filetype plugin indent on
color molokai
syntax enable
autocmd! BufNewFile * silent! 0r ~/.vim/skel/tmpl.%:e

set backspace=indent,eol,start  " backspace through everything in insert mode

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

call pathogen#infect()

" use comma as <Leader> key instead of backslash
let mapleader=","

" Double <Leader> to switch between buffers
nnoremap <leader><leader> <c-^>
" double percentage sign in command mode is expanded
" to directory of current file - http://vimcasts.org/e/14
cnoremap %% <C-R>=expand('%:h').'/'<cr>

map <leader>f :CommandTFlush<cr>\|:CommandT<cr>
map <leader>F :CommandTFlush<cr>\|:CommandT %%<cr>
