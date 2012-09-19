"********************************************************************
"
" Made by @AngeZanetti - 2012
"   under Beerware licence
"   version : 2.1
"
"**********************************************************************

"-----------------------
" General stuff
"-----------------------

" No Vi compatibility
set nocompatible

" Do not keep a backup file.
set nowb
set nobackup
set noswapfile

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

"-----------------------
" GUI
"-----------------------
" If using a dark background within the editing area and syntax highlighting
" set background=dark
colorscheme molokai
"Make the colors works in a terminal
set t_Co=256

" Show (partial) command in status line.
set showcmd
"Always Show the statut line with kool infos in it :)
set laststatus=2
set statusline=\ pwd:\%ry%h\ \%F%m%r%h\ %w\ \ Line:\ %l/%L:%c

if has("gui_running")
  "Show relative line numbers, usefull for delete & copy stuff
  set rnu
  set gfn=Monaco:h12
  "Some tricks for the GUI
  set guioptions-=T "toggle toolbar for MacVim
  set guioptions-=L "toggle left scroll bar
  set guioptions-=r "toggle right scroll bar

else
  set number
endif


"Auto completion menu
set  wildmenu
set  wildmode =list:longest,list:full    "show all the possibilities
set  wildignore =*.o,*.r,*.so,*.sl,*.tar,*.tgz    "ignore certain type of files for the autocompl.

" Hihlight the cursor line
set cursorline

"Set 5 lines to the curors - when moving vertical..
set so=5

"Indentation with Tab
nmap <Tab> >>
nmap <S-Tab> <<
vmap <Tab> >gv
vmap <S-Tab> <gv

" Show tabs and trailing spaces so I can remove them
" set list
" set listchars=tab:»·,trail:·

"-----------------------
" Search
"-----------------------
"Display the match for a search pattern when halfway typing it.
set incsearch
"Ignore case when searching
set ignorecase
set smartcase

"-----------------------
" Remap
"-----------------------

" Close the ( & { automaticaly and show the ones match :)
" inoremap ( ()<left>
" inoremap { {}<left>
" noremap [ []<left>

" move the current line up or down
nmap <C-j> :m+<CR>
nmap <C-k> :m-2<CR>
" move the selected block up or down
vmap <C-j> :m'>+<CR> gv
vmap <C-k> :m'<-2<CR> gv

" remap gc to / in the visual mode for the t-comment plugin
vmap / gc

" map :w !sudo tee % to easier command, to gain root privilege when edit files
cmap w! :w !sudo tee %

" resize windows with arrows & Shift
noremap <S-Left> <C-W>4<
noremap <S-Right> <C-W>4>
noremap <S-Up> <C-W>4+
noremap <S-Down> <C-W>4-

"Quicker escaping and save
inoremap jj <ESC>:w<Enter>

" F6 to completion
inoremap <F6> <C-n>

" F5 to validate PHP syntax
map <F5> :!php -l %<CR>

"Set the mapleader to ,
:let mapleader = ","

"-----------------------
" Indentation
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

" source $MYVIMRC reloads the saved $MYVIMRC
nmap <Leader>s :source $MYVIMRC<CR>
" opens $MYVIMRC for editing, or use :tabedit $MYVIMRC
nmap <Leader>v :vs $MYVIMRC<CR>

if has("syntax")
  syntax on
endif
"Add my special todolist syntax :p
autocmd BufRead,BufNewFile *.todo set filetype=todo
