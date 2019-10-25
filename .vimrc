" be sensible
set autoindent shiftround                   " smart indent
set backspace=indent,eol,start              " saner backspace
set display=lastline                        " show last line
set formatoptions+=j                        " join without comment character
set hidden                                  " sneaky buffer action
set ignorecase smartcase                    " ignore case if no capitals
set incsearch                               " incremental search
set laststatus=2                            " always show statusline
set linebreak                               " saner word wrap
set mouse=a                                 " heresy
set noswapfile                              " rm *.swp
set splitright splitbelow                   " natural split directions
set wildmenu wildignorecase                 " case insensitive tab completion
filetype plugin indent on
syntax enable
runtime! macros/matchit.vim

" tiny tweaks
set fillchars+=vert:\                       " ceci n'est pas une pipe
set grepprg=grep\ -nrsH
set path+=**
set softtabstop=4 shiftwidth=4 expandtab
set statusline=%f\ %h%w%m%r%=[%{&ff}]%y[%p%%]\ %l:%-3c
set wildignore+=*.a,*.o,*.dep
set t_Co=16 bg=dark
highlight Folded ctermfg=White
highlight Highlight ctermfg=Black
highlight LineNr ctermfg=DarkGray

" mappings
nnoremap <space><space> :b <C-d>
nnoremap <BS> :b#<CR>
nnoremap <S-Tab> :bprevious<CR>
nnoremap <Tab> :bnext<CR>
nnoremap <F3> :w<CR>
nnoremap <silent><CR> :noh<CR>
nnoremap <space>f :find *
nnoremap <space>s :sfind *
nnoremap <space>v :vert sfind *
nnoremap <space>t :tabfind *

" plugins
call plug#begin('~/.vim/plugged')
    Plug 'romainl/vim-qf'
    Plug 'romainl/vim-qlist'
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-eunuch'
    Plug 'tpope/vim-repeat'
    Plug 'tpope/vim-unimpaired'
call plug#end()
