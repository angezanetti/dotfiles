" Vim syntax file
" Language:     AngeZanetti's todo files
" Maintainer:   @AngeZanetti
" Last Change:  Dec 23, 2011
" Version: 1.3 
" Licence: Beerware 
" ----------------------------------------------
" Here is a simple vim syntax to highlight 
" properly my todolists 
"
" How it works : 
" -> New project/Title
" w: for the work list
" p: personnal stuff
" x : done
"
" Date are underlined, to put a name in green color just add a @ like
" @angezanetti - it can be 1 or 2 words. 
"
" Enjoy !
" ----------------------------------------------

if exists("b:current_syntax")
  finish
endif

setlocal iskeyword+=:
syn case ignore


syn match todoPeople '@\S\+'
syn match todoPeople '@\S\+\s\u\S*'
syn match todoPrj	"^-> "
syn match todoWork	"^w: "
syn match todoPersonal	"^p: "
syn region todoPrj	start=/^_\|\s*\zs-> / end=/\n/
syn region todoWork	start=/^_\|\s*\zsw: / end=/\n/
syn region todoPersonal	start=/^_\|\s*\zsp: / end=/\n/
syn region todoDone	start=/^_\|\s*\zsx: / end=/\n/
syn match todoDate /\d\{2\}\/\d\{2\}\/\d\{4\}/


highlight link todoPrj	Type
highlight link todoWork	title	
highlight link todoPersonal String	
highlight link todoDone function	
hi todoDate term=underline gui=underline 
hi todoPeople ctermfg=Blue guifg=Blue

let b:current_syntax = "todo"
