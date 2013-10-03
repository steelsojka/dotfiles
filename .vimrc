set nocompatible

execute pathogen#infect()
filetype plugin indent on
syntax on

let mapleader = ","
let g:mapleader = ","
set number
set nowrap
set hlsearch
set incsearch
set smartcase
colorscheme jellybeans
set laststatus=2
set autoread

" Fast saving
nmap <Leader>w :w<cr> 
nmap <Leader>q :q<cr>


set tabstop=2
set smarttab
set shiftwidth=2
set autoindent
set backspace=eol,start,indent
set showmatch
set cursorline

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>
let g:airline#extensions#hunks#enabled = 1

" Format the status line
" set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l

" Move around splits with <c-hjkl>
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

set showcmd
set ruler

set backup
set backupdir=~/.vim/backups
set directory=~/.vim/tmp

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

inoremap jk <esc>
inoremap kj <esc>

let g:UseNumberToggleTrigger = 0

nnoremap <leader>t :NERDTree<CR>
nnoremap <leader>f :NERDTreeFind<CR>
"================ Completion =======================

set wildmode=list:longest
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

let g:airline#extensions#branch#enabled = 1
let g:airline_detect_modified=1
let g:airline_detect_paste=1

autocmd FileType html,htmldjango,jinjahtml,eruby,mako let b:closetag_html_style=1
autocmd FileType html,xhtml,xml,htmldjango,jinjahtml,eruby,mako source ~/.vim/bundle/closetag/plugin/closetag.vim
" ================ Scrolling ========================

set scrolloff=5       "Start scrolling when we're 5 lines away from
set sidescrolloff=15
set sidescroll=1

nnoremap <Leader>n :call NumberToggle()<cr>

" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
    	return 'PASTE MODE  '
  	en
    return ''
endfunction
