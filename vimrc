execute pathogen#infect()

filetype plugin indent on
syntax on
colorscheme molokai

map ,ts :TagbarOpen j<CR>
com IS %s/\(\a\)(/\1 (/g))
com WS %s/\s\+$//e
com Wq wq
com W w
com Q q
let g:tagbar_show_visibility=1
autocmd VimEnter * nested :call tagbar#autoopen(1)
set number
set ruler

let g:go_disable_autoinstall = 0

" Highlight
 let g:go_highlight_functions = 1  
 let g:go_highlight_methods = 1  
 let g:go_highlight_structs = 1  
 let g:go_highlight_operators = 1  
 let g:go_highlight_build_constraints = 1  

 let g:tagbar_type_go = {  
     \ 'ctagstype' : 'go',
     \ 'kinds'     : [
         \ 'p:package',
         \ 'i:imports:1',
         \ 'c:constants',
         \ 'v:variables',
         \ 't:types',
         \ 'n:interfaces',
         \ 'w:fields',
         \ 'e:embedded',
         \ 'm:methods',
         \ 'r:constructor',
         \ 'f:functions'
     \ ],
     \ 'sro' : '.',
     \ 'kind2scope' : {
         \ 't' : 'ctype',
         \ 'n' : 'ntype'
     \ },
     \ 'scope2kind' : {
         \ 'ctype' : 't',
         \ 'ntype' : 'n'
     \ },
     \ 'ctagsbin'  : 'gotags',
     \ 'ctagsargs' : '-sort -silent'
     \ }
set colorcolumn=120

let g:go_fmt_command = "/home/sammyst/src/server/go/bin/goimports"
