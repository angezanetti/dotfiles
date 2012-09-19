" Convert tabs to spaces
set  tabstop =4
set  shiftwidth =4
set  softtabstop =4
set  expandtab
" F5 to validate PHP syntax
set makeprg = "php -l %"
nmap <F5> :make<ENTER>:copen<ENTER><CTRL>L

"Completion for PHP
set complete=.,w,b,u,t,i,k~/.vim/syntax/php.api
