"********************************************************************
"
" Made by @AngeZanetti - 2013
"   under Beerware licence
"   version : 2.1
"
"**********************************************************************
execute pathogen#infect()
"-----------------------
" General stuff
"-----------------------

" No Vi compatibility
set nocompatible

" Do not keep a backup file.
set nowb
set nobackup
set noswapfile
set undofile
set undodir=$HOME/.vim/undodir

" Set to auto read when a file is changed from the outside
set autoread

" Use UTF-8 as the default buffer encoding
set enc=utf-8

"Set the lenght of the history...
set history=300

" No sound on errors plz
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Show matching brackets.
set showmatch

" We have a fast terminal
set ttyfast

" have % bounce between angled brackets, as well as t'other kinds:
set matchpairs+=<:>

" Splits open on the right
set splitright

set mouse=a
"-----------------------
" GUI
"-----------------------
colorscheme molokai
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar

"Make the colors works in a terminal
set t_Co=256

" Show (partial) command in status line.
set showcmd

"Always Show the statut line with kool infos in it :)
set laststatus=2
" set statusline=\ pwd:\%ry%h\ \%F%m%r%h\ %w\ \ Line:\ %l/%L:%c

"Auto completion menu
set  wildmenu
set  wildmode =list:longest,list:full    "show all the possibilities
set  wildignore =*.o,*.r,*.so,*.sl,*.tar,*.tgz    "ignore certain type of files for the autocompl.

" Hihlight the cursor line
set cursorline

"Set 8 lines btw the screen top/bottom and the cursor
set so=50

"Do not code after da limit
set colorcolumn=80

" Easily reach the paste mode
set pastetoggle=<C-p>

"-----------------------
" Search
"-----------------------
"Display the match for a search pattern when halfway typing it.
set incsearch
"Ignore case when searching
set ignorecase
set smartcase

set hlsearch
nnoremap <Leader>h :nohlsearch<Bar>:echo<CR>

"Keep search pattern at the center of the screen
nnoremap <silent> n nzz
nnoremap <silent> N Nzz

map <CR> :w<CR>

"Quick buffer navigation
nnoremap gb :buffers<CR>:sb<Space>

noremap H ^
noremap L $
"-----------------------
" Leader 
"-----------------------
"Set the mapleader to ,
" :let mapleader = ","
let mapleader = "\<Space>"

"Let the CtrlP magic happens
nmap <Leader>p :CtrlP<CR>

" Copy to the clipboard -- need +xterm-clipboard 
nmap <Leader>y "+y<CR>

" Go to the void bitch :)
nmap <Leader>d "_d<CR>

"NERDTree appears
nmap <Leader>n :NERDTree<CR>

"Remove trainliung spaces
nmap <Leader>t :%s/\s\+$//<CR>

"-----------------------
" Remap
"-----------------------
" move the current line up or down
" nmap <C-j> :m+<CR>
" nmap <C-k> :m-2<CR>
" " move the selected block up or down
" vmap <C-j> :m'>+<CR> gv
" vmap <C-k> :m'<-2<CR> gv

" Move between splits
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-h> <C-w>h
nmap <C-l> <C-w>l

" remap gc to / in the visual mode for the t-comment plugin
vmap / gc

" map :w !sudo tee % to easier command, to gain root privilege when edit files
cmap w!! %!sudo tee > /dev/null % 

" resize windows with arrows & Shift
noremap <S-Left> <C-W>4<
noremap <S-Right> <C-W>4>
noremap <S-Up> <C-W>4+
noremap <S-Down> <C-W>4- 

"Tab for completion
imap <Tab> <C-R>=SuperTab()<CR>
imap kj <Esc>

"Don't tell me about Exmode 
noremap Q <nop>
noremap K <nop>

"Indentation with Tab
nmap <Tab> >>
nmap <S-Tab> <<
vmap <Tab> >gv
vmap <S-Tab> <gv

"fix old vi function
map Y y$

" Indentation
"-----------------------
"-----------------------
set autoindent
set smartindent
set backspace=indent,eol,start

" Convert tabs to spaces
set  tabstop =2
set  shiftwidth =2
set  softtabstop =2
set  expandtab

"-----------------------
" Misc
"-----------------------
"enable plugins
filetype plugin on
filetype indent on
"source $MYVIMRC reloads the saved $MYVIMRC
nmap <Leader>s :source $MYVIMRC<CR>
"opens $MYVIMRC for editing, or use :tabedit $MYVIMRC
nmap <Leader>v :vs $MYVIMRC<CR>

if has("syntax")
  syntax on
endif

if has("autocmd")
  augroup vimrc_cmd
    au!
    " Add some cool IDE function to PHP editing
    autocmd BufRead,BufNewFile,FileReadPost *.php source ~/.vim/php.vim
    "Add my special todolist syntax :p
    autocmd BufRead,BufNewFile *.todo set filetype=todo
    " automatically reload vimrc when it's saved
    au BufWritePost .vimrc so ~/.vimrc
  augroup END
endif


function! SuperTab()
  if (strpart(getline('.'),col('.')-2,1)=~'^\W\?$')
    return "\<Tab>"
  else
    return "\<C-n>"
  endif
endfunction

au BufRead,BufNewFile *.twig set filetype=htmldjango

"Be nice with mutt 
au BufRead /tmp/mutt-* set tw=72
" Ctrlp stuff
set runtimepath^=~/.vim/bundle/ctrlp.vim
