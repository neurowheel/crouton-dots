" be sensible
set autoindent shiftround                   " smart indent
set backspace=indent,eol,start              " saner backspace
set display=lastline                        " show last line
set hidden                                  " sneaky buffer action
set hlsearch incsearch                      " highlight search
set ignorecase smartcase                    " ignore case if no capitals
set linebreak                               " saner word wrap
set mouse=a                                 " heresy
set noswapfile                              " rm *.swp
set number                                  " line numbers
set splitright splitbelow                   " natural split directions
set wildmenu wildignorecase                 " case insensitive tab completion
filetype plugin indent on
syntax enable

" tiny tweaks
set softtabstop=4 shiftwidth=4 expandtab     " use four spaces
set t_Co=16 bg=dark                          " fix colors
highlight Folded ctermfg=White
noremap <space> <nop>
let mapleader=" "                            " map space to leader

" statusline
set laststatus=2
set statusline=%f\ %h%w%m%r\%=[%{&ff}]%y[%p%%]\ %l:%-3c
" options.txt [Help][Preview][-][RO]        [unix][help][80%] 6987:7
" src/main.cpp [+]                          [unix][cpp][64%] 636:101

" movement bindings
nnoremap j gj| nnoremap k gk|               " move by visual line
nnoremap <C-J> <C-W><C-J>|                  " movement between splits
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <silent><leader>j :bn<cr>
nnoremap <silent><leader>k :bp<cr>|         " i want to ride my bicycle
nnoremap <leader><space> :ls<cr>:b<space>|  " but why cycle when you can fly?

" other nice things
nnoremap <F3> :w<CR>|                       " one tap save (normal)
inoremap <silent> <F3> <C-o>:silent w<CR>|  " one tap save (insert)
set pastetoggle=<F4>                        " toggle paste
nnoremap <F5> :so ~/.vimrc<cr>|             " source vimrc
nnoremap <silent> // :noh<cr>|              " clear highlight
nnoremap <leader>s :update<cr>|             " save if modified
nnoremap <leader>w :set wrap!<cr>|          " toggle wrap
nnoremap === yyp<S-v>r=|                    " underline quickly
if filereadable(expand('~/.vimrc_local'))
    source ~/.vimrc_local
endif
