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
if executable('rg')
    set grepprg=rg\ --vimgrep
else
    set grepprg=grep\ -nrsH
endif
set path+=include;,**
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
" wget https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
if !empty(glob('~/.vim/autoload/plug.vim'))
call plug#begin('~/.vim/plugged')
    Plug 'romainl/vim-qf'
    Plug 'romainl/vim-qlist'
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-eunuch'
    Plug 'tpope/vim-repeat'
    Plug 'tpope/vim-unimpaired'
    " language specific
    Plug 'vhda/verilog_systemverilog.vim', { 'for' : 'systemverilog' }
    Plug 'rust-lang/rust.vim', { 'for' : 'rust' }
    Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
    " trying these out
    Plug 'mhinz/vim-signify'
    if has("patch-8.1.1564")|set signcolumn=number|endif
    nnoremap <space>u :SignifyHunkUndo<CR>
    Plug 'tpope/vim-dispatch'
    Plug 'tpope/vim-fugitive'
    nnoremap <space>gd :Gvdiffsplit<CR>
    nnoremap <space>gb :Gblame<CR>
    Plug 'tpope/vim-surround'
call plug#end()
endif

" backup, swap, and undo
if isdirectory($HOME . '/.vim/backup')
    set backupdir=~/.vim/backup//
endif
if isdirectory($HOME . '/.vim/swap')
    set directory=~/.vim/swap//
endif
if isdirectory($HOME . '/.vim/undo')
    set undodir=~/.vim/undo//
    set undofile
endif
