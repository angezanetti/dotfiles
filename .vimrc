syntax on

" ===========================================================
" General vim settings.
" ===========================================================
set autoindent        " Indented text
set autoread          " Pick up external changes to files
set autowrite         " Write files when navigating with :next/:previous
set background=dark
set backspace=indent,eol,start
set belloff=all       " Bells are annoying
set infercase         " Smart casing when completing
set ignorecase        " Search in case-insensitively
set incsearch         " Go to search results immediately
set laststatus=2      " We want a statusline
set mouse=a           " Mouse support in the terminal
set mousehide         " Hide mouse when typing text
set nobackup          " No backup files
set nocompatible      " No Vi support
set shiftwidth=4
set smarttab
set synmaxcol=200     " Only syntax highlight for 200 chars (for performance)
set t_Co=256          " 256 color support
set tabstop=4
set textwidth=79
set ttyfast
set updatetime=1000
set viminfo=          " No backups
set wildignore+=.git/**,_build/**,build/**,cache/**,node_modules/**,lib/**,log/**,tmp/**
set wildmenu
set wildmode=full


if has('unnamedplus')
    set clipboard=unnamed,unnamedplus
else
    set clipboard=unnamed
endif

if has("nvim")
    " Set 'guicursor' explicitly; needed for shape-changing to work in xterm.
    " set guicursor=n-v-c-sm:block-Cursor,i-ci-ve:ver25-Cursor,r-cr-o:hor20-Cursor
    set guicursor=n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20
    set inccommand=nosplit
    set list
    set listchars=tab:\ \ ,trail:-
else
    set cryptmethod=blowfish2
    set listchars=eol:$,tab:>-,trail:-
    set ttymouse=xterm2
endif

" ===========================================================
" FUNCTIONS
" ===========================================================
function! NERDTreeRefresh()
    if &filetype == "nerdtree"
        silent exe substitute(mapcheck("R"), "<CR>", "", "")
    endif
endfunction

function! SuperTab()
  if (strpart(getline('.'),col('.')-2,1)=~'^\W\?$')
    return "\<Tab>"
  else
    return "\<C-n>"
  endif
endfunction
"===========================================================
" MAPPINGS
"===========================================================
" Y should behave like D and C, from cursor till end of line.
noremap Y y$
" Center search matches when navigating.
noremap n nzz
noremap N Nzz
nnoremap <Leader>h :nohlsearch<Bar>:echo<CR>
map <CR> :w<CR>
imap kj <Esc>
let mapleader = "\<Space>"
set pastetoggle=<C-p>
"NERDTree appears
nmap <Leader>n :NERDTree<CR>
"Remove trailing spaces
nmap <Leader>t :%s/\s\+$//<CR>
"Don't tell me about Exmode
noremap Q <nop>
noremap K <nop>

"Indentation with Tab
nmap <Tab> >>
nmap <S-Tab> <<
vmap <Tab> >gv
vmap <S-Tab> <gv
"Tab for completion
imap <Tab> <C-R>=SuperTab()<CR>

if has("nvim")
    " Make escape work in the Neovim terminal.
    tnoremap <Esc> <C-\><C-n>
endif
"-----------------------------
" Navigation mappings
"-----------------------------
nnoremap <C-h>     <C-w>h
nnoremap <C-j>     <C-w>j
nnoremap <C-k>     <C-w>k
nnoremap <C-l>     <C-w>l
if has("nvim")
    " Use same mappings as above to navigate Neovim terminal splits.
    tnoremap <C-h> <C-\><C-N><C-w>h
    tnoremap <C-j> <C-\><C-N><C-w>j
    tnoremap <C-k> <C-\><C-N><C-w>k
    tnoremap <C-l> <C-\><C-N><C-w>l
endif

"===========================================================
" PLUGINS
"===========================================================

" Automatically install vim-plug and run PlugInstall if vim-plug is not found.
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Initialize vim-plug.
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
    let NERDTreeStatusline            = " NERDTree "
    noremap <silent> <leader>n        :NERDTreeToggle<CR> <C-w>=
    noremap <silent> <leader>f        :NERDTreeFind<CR> <C-w>=
	autocmd! BufEnter * call NERDTreeRefresh()

Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': 'NERDTreeToggle' }
	let g:NERDTreeUpdateOnCursorHold = 0
Plug 'tpope/vim-commentary'
Plug 'mhinz/vim-janah'
Plug 'vim-airline/vim-airline'
Plug 'w0rp/ale'
	let g:airline#extensions#ale#enabled = 1

call plug#end()

"===========================================================
" AUTOCMDS
"===========================================================

" Custom settings per language by file type.
"
augroup languageCustomizationsByType
    " Note, 'autocmd!' is used to clear out any existing definitions in
    " this auto-group. This prevents duplicate entries upon a live vimrc
    " reload.
    autocmd!
    autocmd FileType c,cpp setlocal cindent foldmethod=syntax
    autocmd FileType coffee setlocal shiftwidth=2
    autocmd FileType css setlocal shiftwidth=2
    autocmd FileType css,scss let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
    autocmd FileType eelixir setlocal matchpairs=(:),{:},[:]
    autocmd FileType eruby setlocal formatoptions=cq shiftwidth=2 matchpairs=(:),{:},[:]
    " Setup indent lines for tab formatted Golang code. Note, the IndentLine 
    " plugin will not show markers for tab formatted code, so we need to mimic
    " what that plugin does here using listchars and highlighting.
    autocmd FileType go setlocal list listchars=tab:\¦\ 
    autocmd FileType go highlight SpecialKey ctermfg=234 guifg=#1c1c1c
    " Match it navigation is broken for HTML, this Stack Overflow tip fixes it.
    autocmd FileType html let b:match_words = '<\(\w\w*\):</\1,{:}'
    autocmd FileType html setlocal shiftwidth=2 textwidth=999
    autocmd FileType javascript setlocal shiftwidth=2
    autocmd FileType javascript.jsx setlocal formatoptions=cq
    autocmd FileType json setlocal conceallevel=0
    autocmd FileType markdown setlocal formatoptions=tqln
    autocmd FileType markdown syntax sync fromstart
    autocmd FileType ruby setlocal formatoptions=cq shiftwidth=2 makeprg=ruby\ -w\ %
    autocmd FileType scss let g:indentLine_faster=0
    autocmd FileType scss setlocal shiftwidth=2
    autocmd FileType sh setlocal textwidth=999
    autocmd FileType vim setlocal textwidth=999
    autocmd FileType xml setlocal shiftwidth=2 textwidth=999
    autocmd FileType yaml setlocal shiftwidth=2 textwidth=999
augroup END

"===========================================================
" COLOR SCHEME
"===========================================================
colorscheme janah
