set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'gregsexton/MatchTag'
Plugin 'mbbill/undotree'
Plugin 'vim-scripts/YankRing.vim'
Plugin 'corntrace/bufexplorer'
Plugin 'kien/ctrlp.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'othree/html5.vim'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-abolish'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-commentary'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'groenewege/vim-less'
Plugin 'plasticboy/vim-markdown'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'SirVer/ultisnips'
Plugin 'nanotech/jellybeans.vim'
Plugin 'digitaltoad/vim-jade'
Plugin 'xolox/vim-session'
Plugin 'xolox/vim-misc'

call vundle#end()

filetype plugin indent on
syntax on

let mapleader = ","
let g:mapleader = ","

set number
set nowrap
set hlsearch
set incsearch
set smartcase
set ignorecase
set laststatus=2
set autoread
set undofile
set exrc
set secure
set tabstop=4
set smarttab
set shiftwidth=2
set autoindent
set expandtab
set backspace=eol,start,indent
set showmatch
set cursorline
set showcmd
set ruler
set backup
set backupdir=~/.vim/backups
set directory=~/.vim/tmp
set undodir=~/.vim/undo
set pastetoggle=<F2>
set grepprg=ag
set shiftround
set nofoldenable

" ------------------------------------------------------------------------
" Completion
" ------------------------------------------------------------------------

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

" ------------------------------------------------------------------------
" Scrolling
" ------------------------------------------------------------------------

set scrolloff=5       "Start scrolling when we're 5 lines away from
set sidescrolloff=15
set sidescroll=1

set timeoutlen=500
set ttimeout
set ttimeoutlen=1

" ------------------------------------------------------------------------
" Schemes
" ------------------------------------------------------------------------
colorscheme jellybeans

" ------------------------------------------------------------------------
" Mappings
" ------------------------------------------------------------------------

command! Q q
command! E e

" Fast quiting
inoremap <C-Q>     <esc>:q<cr>
nnoremap <C-Q>     :q<cr>
vnoremap <C-Q>     <esc>
nnoremap <Leader>q :q<cr>
nnoremap <Leader>Q :qa!<cr>

" Remove search highlight
nnoremap <silent> ,/ :nohlsearch<CR>

" Fast saving
nnoremap <Leader>w :update<CR>
nnoremap <C-s> :update<CR>
inoremap <C-s> <C-O>:update<CR>

nmap k gk
nmap j gj

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Install all plugins
map <Leader>ip :PluginInstall<CR>

" Paste from clipboard register
nnoremap <Leader>v "+p

" Move around splits with <c-hjkl>
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Moving lines
nnoremap <silent> ˚ :move-2<cr>
nnoremap <silent> ∆ :move+<cr>
nnoremap <silent> ˙ <<
nnoremap <silent> ¬ >>
xnoremap <silent> ˚ :move-2<cr>gv
xnoremap <silent> ∆ :move'>+<cr>gv
xnoremap <silent> ˙ <gv
xnoremap <silent> ¬ >gv
xnoremap < <gv
xnoremap > >gv

" Replace double quotes with single quotes
nnoremap <Leader>'' :%s/"/'/g<CR>

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" Escaping
inoremap kj <esc>

" If we forget to sudo
cmap w!! w !sudo tee % >/dev/null

" Type semicolon instead of Shift+colon
nnoremap ; :

" Replace highlighted text
vnoremap <C-r> hy:%s/<C-r>h//gc<left><left><left>

" ------------------------------------------------------------------------
" vim-airline
" ------------------------------------------------------------------------
let g:airline#extensions#hunks#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline_detect_modified=1
let g:airline_detect_paste=1

" ------------------------------------------------------------------------
" YankRing
" ------------------------------------------------------------------------
let g:yankring_replace_n_pkey = ''
let g:yankring_replace_n_nkey = ''
nnoremap <leader>p :YRGetElem<CR>

" ------------------------------------------------------------------------
" UndoTree
" ------------------------------------------------------------------------
nnoremap U :UndotreeToggle<CR>

" ------------------------------------------------------------------------
" NERDTree
" ------------------------------------------------------------------------
nnoremap <leader>t :NERDTree<CR>
nnoremap <leader>f :NERDTreeFind<CR>
" let NERDTreeIgnore = []

" ------------------------------------------------------------------------
" CtrlP
" ------------------------------------------------------------------------
let g:ctrlp_custom_ignore = {
  \ 'dir':  'node_modules',
  \ }

" ------------------------------------------------------------------------
" vim-sessions
" ------------------------------------------------------------------------
let g:session_autoload='no'
let g:session_autosave='no'
nnoremap <Leader>os :OpenSession<CR>
nnoremap <Leader>ss :SaveSession 

" ------------------------------------------------------------------------
" vim-numbertoggle
" ------------------------------------------------------------------------
let g:UseNumberToggleTrigger = 0
nnoremap <Leader>n :call NumberToggle()<cr>

autocmd FileType html,htmldjango,jinjahtml,eruby,mako let b:closetag_html_style=1
autocmd FileType html,xhtml,xml,htmldjango,jinjahtml,eruby,mako source ~/.vim/bundle/closetag/plugin/closetag.vim

" ------------------------------------------------------------------------
" UltiSnips
" ------------------------------------------------------------------------
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsSnippetDir="~/.vim/UltiSnips"


" ------------------------------------------------------------------------
" Functions
" ------------------------------------------------------------------------
" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
    	return 'PASTE MODE  '
  	en
    return ''
endfunction

" Find the projects .jshintrc file or use the home directory one
" Used for syntastic
function s:find_jshintrc(dir)
    let l:found = globpath(a:dir, '.jshintrc')
    if filereadable(l:found)
        return l:found
    endif

    let l:parent = fnamemodify(a:dir, ':h')
    if l:parent != a:dir
        return s:find_jshintrc(l:parent)
    endif

    return "~/.jshintrc"
endfunction

function UpdateJsHintConf()
    let l:dir = expand('%:p:h')
    let l:jshintrc = s:find_jshintrc(l:dir)
    let g:syntastic_javascript_jshint_conf = l:jshintrc
endfunction

au BufEnter * call UpdateJsHintConf()

" ----------------------------------------------------------------------------
" SaveMacro / LoadMacro
" ----------------------------------------------------------------------------
function! s:save_macro(name, file)
  let content = eval('@'.a:name)
  if !empty(content)
    call writefile(split(content, "\n"), a:file)
    echom len(content) . " bytes save to ". a:file
  endif
endfunction
command! -nargs=* SaveMacro call <SID>save_macro(<f-args>)

function! s:load_macro(file, name)
  let data = join(readfile(a:file), "\n")
  call setreg(a:name, data, 'c')
  echom "Macro loaded to @". a:name
endfunction
command! -nargs=* LoadMacro call <SID>load_macro(<f-args>)
