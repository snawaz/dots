
" > https://github.com/preservim/nerdtree/blob/master/doc/NERDTree.txt

let NERDTreeIgnore=['\~$', 'target', '\.l', '_bk']
let NERDTreeShowLineNumbers=1 " enable line numbers

nnoremap <leader>f :NERDTreeToggle<Enter>

autocmd FileType nerdtree setlocal relativenumber " make sure relative line numbers are used
