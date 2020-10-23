" be sensible
set autoindent shiftround                   " smart indent
set backspace=indent,eol,start              " saner backspace
set display=lastline                        " show last line
set formatoptions+=j                        " join without comment character
set hidden                                  " sneaky buffer action
set ignorecase smartcase                    " ignore case if no capitals
set incsearch hlsearch
set laststatus=2                            " always show statusline
set linebreak                               " saner word wrap
set mouse=a                                 " heresy
set number
set splitright splitbelow                   " natural split directions
set wildmenu wildignorecase                 " case insensitive tab completion
filetype plugin indent on
syntax enable
runtime! macros/matchit.vim

" tweaks
set cinoptions+=l1                          " switch-case indentation
set fillchars+=vert:\                       " ceci n'est pas une pipe
set grepprg=grep\ -nrsH
set path+=include;
set path+=**
set tags+=tags;
set softtabstop=4 shiftwidth=4 expandtab
set statusline=%f\ %h%w%m%r%=[%{&ff}]%y[%p%%]\ %l:%-3c
set wildignore+=*.a,*.o,*.dep
highlight Folded ctermfg=White
highlight Highlight ctermfg=Black
highlight LineNr ctermfg=Gray
highlight Search ctermfg=Black
highlight Visual ctermbg=Gray
" let g:rustfmt_autosave = 1

" mappings
nnoremap <space><space> :b <C-d>
nnoremap <BS> :b#<CR>
nnoremap <S-Tab> :bprevious<CR>
nnoremap <Tab> :bnext<CR>
nnoremap <F3> :w<CR>
inoremap <F3> <C-o>:w<CR>
nnoremap <silent><CR> :noh<CR>
nnoremap <space>f :find *
nnoremap <space>s :sfind *
nnoremap <space>v :vert sfind *
nnoremap <space>t :tabfind *

" plugins
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.vim/plugged')
    " Plug 'romainl/vim-qf'
    Plug 'romainl/vim-qlist'
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-eunuch'
    Plug 'tpope/vim-repeat'
    Plug 'tpope/vim-unimpaired'
    " Plug 'vhda/verilog_systemverilog.vim'
    " Plug 'rust-lang/rust.vim'
call plug#end()

" backup, swap, and undo
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//
set undofile
