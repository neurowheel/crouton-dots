" BASIC STUFF {{{
set nocompatible                            " modern vim
set backspace=indent,eol,start              " saner backspace
set encoding=utf-8 fileencoding=utf-8       " encoding
set fileformats=unix,dos,mac                " newlines
set lazyredraw ttyfast                      " speed up vim
set noerrorbells novisualbell t_vb=         " turn off bells
set noswapfile                              " rm *.swp
set number ruler                            " line numbers
set tm=500                                  " timeout length
set wildmenu wildmode=longest,list          " tab completion
set wildignorecase                          " with case insensitivity
set wrap linebreak                          " word wrap
set display=lastline                        " show last line
" }}}

" INDENT {{{
set ts=4 sts=4 shiftwidth=4                 " 1 tab = 4 sp
set expandtab                               " expand tabs into spaces
set shiftround                              " snap indent
set autoindent                              " smart indent
filetype indent on                          " smarter indent
set breakindent                             " visual lines indented
" }}}

" COLORS {{{
set t_Co=16                                 " 16 colors
syntax on                                   " syntax highlighting
" }}}

" SEARCH {{{
highlight Search ctermfg=Black
set ignorecase smartcase                    " ignore case if no capitals
set hlsearch incsearch                      " highlight search
" }}}

" MOVEMENT {{{
nnoremap j gj| noremap k gk|                " move by visual line
nnoremap <Down> gj| noremap <Up> gk|
inoremap <Down> <C-o>gj| inoremap <Up> <C-o>gk
nnoremap <C-n> :bnext<CR>                   " buffer movements
nnoremap <C-p> :bprevious<CR>
" }}}

" SPLITS {{{
set splitright splitbelow                   " splits to below and right
nnoremap <C-J> <C-W><C-J>|                  " movement
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" }}}

" OTHER NICE THINGS {{{
nnoremap <F3> :w<CR>|                       " one tap save (normal)
inoremap <silent> <F3> <C-o>:silent w<CR>|  " one tap save (insert)
nnoremap <silent> // :noh<return>|          " clear highlight
set mouse=a                                 " heresy
set pastetoggle=<F4>                        " paste toggle
nnoremap <F5> :so ~/.vimrc<CR>|             " source vimrc
" vim:foldmethod=marker:foldlevel=1
" }}}
