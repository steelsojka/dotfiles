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

inoremap kj <esc>

" let g:colorizer_auto_filetype = 'css,html,javascript,cf,json'
nnoremap <leader>c :ColorToggle<CR>

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

let NERDTreeIgnore = [^.*-(US|DE)\d*\..*$]

let g:ackprg="~/bin/ack -H --nocolor --nogroup --column"

let g:colorizer_custom_colors = {
\ 'btn_action': '#f48e2e',
\ 'btn_action_border': '#f07821',
\ 'btn_action_border_hover': '#e7680f',
\ 'btn_action_hover': '#ed7e16',
\ 'btn_primary': '#455560',
\ 'btn_primary_border': '#33414b',
\ 'btn_primary_border_hover': '#2b3a45',
\ 'btn_primary_hover': '#3a4c59',
\ 'btn_secondary': '#93a9b2',
\ 'btn_secondary_border': '#7f97a1',
\ 'btn_secondary_border_hover': '#627b86',
\ 'btn_secondary_hover': '#8a9fa8',
\ 'hn_action': '#f48e2e',
\ 'hn_background': '#f3f4f5',
\ 'hn_black': '#000000',
\ 'hn_error': '#f16745',
\ 'hn_primary_dk': '#455560',
\ 'hn_primary_lt': '#c8d7dd',
\ 'hn_primary_med': '#8199a3',
\ 'hn_red': '#770902',
\ 'hn_secondary_dk': '#6e7173',
\ 'hn_secondary_lt': '#c7c8ca',
\ 'hn_secondary_med': '#9b9d9e',
\ 'hn_white': '#ffffff',
\ 'input_border': '#c7c8ca',
\ 'input_error_border': '#ffe7e1',
\ 'sticks_blue': '#0067ab',
\ 'sticks_gray': '#998b7d',
\ 'sticks_green': '#78a22f',
\ 'sticks_magenta': '#8e0c3a',
\ 'sticks_orange': '#f78f1e',
\ 'sticks_purple': '#5a4099',
\ 'sticks_teal': '#38939b',
\ 'text-btn-action': '#f48e2e',
\ 'text-btn-action-border': '#f07821',
\ 'text-btn-action-border-hover': '#e7680f',
\ 'text-btn-action-hover': '#ed7e16',
\ 'text-btn-primary': '#455560',
\ 'text-btn-primary-border': '#33414b',
\ 'text-btn-primary-border-hover': '#2b3a45',
\ 'text-btn-primary-hover': '#3a4c59',
\ 'text-btn-secondary': '#93a9b2',
\ 'text-btn-secondary-border': '#7f97a1',
\ 'text-btn-secondary-border-hover': '#627b86',
\ 'text-btn-secondary-hover': '#8a9fa8',
\ 'text-hn-action': '#f48e2e',
\ 'text-hn-background': '#f3f4f5',
\ 'text-hn-black': '#000000',
\ 'text-hn-error': '#f16745',
\ 'text-hn-primary-dk': '#455560',
\ 'text-hn-primary-lt': '#c8d7dd',
\ 'text-hn-primary-med': '#8199a3',
\ 'text-hn-red': '#770902',
\ 'text-hn-secondary-dk': '#6e7173',
\ 'text-hn-secondary-lt': '#c7c8ca',
\ 'text-hn-secondary-med': '#9b9d9e',
\ 'text-hn-white': '#ffffff',
\ 'text-input-border': '#c7c8ca',
\ 'text-input-error-border': '#ffe7e1',
\ 'text-sticks-blue': '#0067ab',
\ 'text-sticks-gray': '#998b7d',
\ 'text-sticks-green': '#78a22f',
\ 'text-sticks-magenta': '#8e0c3a',
\ 'text-sticks-orange': '#f78f1e',
\ 'text-sticks-purple': '#5a4099',
\ 'text-sticks-teal': '#38939b',
\ 'bg-btn-action': '#f48e2e',
\ 'bg-btn-action-border': '#f07821',
\ 'bg-btn-action-border-hover': '#e7680f',
\ 'bg-btn-action-hover': '#ed7e16',
\ 'bg-btn-primary': '#455560',
\ 'bg-btn-primary-border': '#33414b',
\ 'bg-btn-primary-border-hover': '#2b3a45',
\ 'bg-btn-primary-hover': '#3a4c59',
\ 'bg-btn-secondary': '#93a9b2',
\ 'bg-btn-secondary-border': '#7f97a1',
\ 'bg-btn-secondary-border-hover': '#627b86',
\ 'bg-btn-secondary-hover': '#8a9fa8',
\ 'bg-hn-action': '#f48e2e',
\ 'bg-hn-background': '#f3f4f5',
\ 'bg-hn-black': '#000000',
\ 'bg-hn-error': '#f16745',
\ 'bg-hn-primary-dk': '#455560',
\ 'bg-hn-primary-lt': '#c8d7dd',
\ 'bg-hn-primary-med': '#8199a3',
\ 'bg-hn-red': '#770902',
\ 'bg-hn-secondary-dk': '#6e7173',
\ 'bg-hn-secondary-lt': '#c7c8ca',
\ 'bg-hn-secondary-med': '#9b9d9e',
\ 'bg-hn-white': '#ffffff',
\ 'bg-input-border': '#c7c8ca',
\ 'bg-input-error-border': '#ffe7e1',
\ 'bg-sticks-blue': '#0067ab',
\ 'bg-sticks-gray': '#998b7d',
\ 'bg-sticks-green': '#78a22f',
\ 'bg-sticks-magenta': '#8e0c3a',
\ 'bg-sticks-orange': '#f78f1e',
\ 'bg-sticks-purple': '#5a4099',
\ 'bg-sticks-teal': '#38939b',
\ 'border-btn-action': '#f48e2e',
\ 'border-btn-action-border': '#f07821',
\ 'border-btn-action-border-hover': '#e7680f',
\ 'border-btn-action-hover': '#ed7e16',
\ 'border-btn-primary': '#455560',
\ 'border-btn-primary-border': '#33414b',
\ 'border-btn-primary-border-hover': '#2b3a45',
\ 'border-btn-primary-hover': '#3a4c59',
\ 'border-btn-secondary': '#93a9b2',
\ 'border-btn-secondary-border': '#7f97a1',
\ 'border-btn-secondary-border-hover': '#627b86',
\ 'border-btn-secondary-hover': '#8a9fa8',
\ 'border-hn-action': '#f48e2e',
\ 'border-hn-background': '#f3f4f5',
\ 'border-hn-black': '#000000',
\ 'border-hn-error': '#f16745',
\ 'border-hn-primary-dk': '#455560',
\ 'border-hn-primary-lt': '#c8d7dd',
\ 'border-hn-primary-med': '#8199a3',
\ 'border-hn-red': '#770902',
\ 'border-hn-secondary-dk': '#6e7173',
\ 'border-hn-secondary-lt': '#c7c8ca',
\ 'border-hn-secondary-med': '#9b9d9e',
\ 'border-hn-white': '#ffffff',
\ 'border-input-border': '#c7c8ca',
\ 'border-input-error-border': '#ffe7e1',
\ 'border-sticks-blue': '#0067ab',
\ 'border-sticks-gray': '#998b7d',
\ 'border-sticks-green': '#78a22f',
\ 'border-sticks-magenta': '#8e0c3a',
\ 'border-sticks-orange': '#f78f1e',
\ 'border-sticks-purple': '#5a4099',
\ 'border-sticks-teal': '#38939b'
\}

" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
    	return 'PASTE MODE  '
  	en
    return ''
endfunction
