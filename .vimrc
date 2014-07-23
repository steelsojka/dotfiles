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
set undofile

" Fast saving
nmap <Leader>w :w<cr> 
nmap <Leader>q :q<cr>

set tabstop=4
set smarttab
set shiftwidth=4
set autoindent
set expandtab
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

nmap <silent> ,/ :nohlsearch<CR>

" Yank Ring mappings
" These bindings were interfering with other plugins that 
" I use regularly. If I need these features, change these bindings.
let g:yankring_replace_n_pkey = ''
let g:yankring_replace_n_nkey = ''
nnoremap <leader>p :YRGetElem<CR>

set showcmd
set ruler

set backup
set backupdir=~/.vim/backups
set directory=~/.vim/tmp
set undodir=~/.vim/undo

nnoremap <leader>u :GundoToggle<CR>

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

inoremap kj <esc>

" let g:colorizer_auto_filetype = 'css,html,javascript,cf,json'
nnoremap <leader>c :ColorToggle<CR>

let g:UseNumberToggleTrigger = 0

nnoremap <leader>t :NERDTree<CR>
nnoremap <leader>f :NERDTreeFind<CR>

" If we forget to sudo
cmap w!! w !sudo tee % >/dev/null

" Type semicolon instead of Shift+colon
nnoremap ; :

vnoremap <C-r> hy:%s/<C-r>h//gc<left><left><left>
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
set wildignore+=node_modules/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

set pastetoggle=<F2>

let g:ctrlp_custom_ignore = {
  \ 'dir':  'node_modules\|docs\|coverage',
  \ }

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

"let NERDTreeIgnore = []

let g:ackprg="~/bin/ack -H --nocolor --nogroup --column"

"let g:colorizer_custom_colors = {
"\}

" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
    	return 'PASTE MODE  '
  	en
    return ''
endfunction
