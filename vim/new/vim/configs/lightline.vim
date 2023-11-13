
" > https://github.com/itchyny/lightline.vim
" > https://github.com/itchyny/lightline.vim/blob/master/colorscheme.md

"let g:lightline = { 'colorscheme': 'wombat' }

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }
