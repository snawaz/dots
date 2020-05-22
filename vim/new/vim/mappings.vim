
" move around easily with split windows:  http://stevelosh.com/blog/2010/09/coming-home-to-vim/
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

noremap < gT
noremap > gt

" I dont use horizontal splits that often, so :I dont need mapping for them.
nnoremap <C-z> :vertical resize +2<CR>
nnoremap <C-x> :vertical resize -2<CR>

" insert an empty line without leaving normal mode
" > https://vi.stackexchange.com/questions/3875/how-to-insert-a-newline-without-leaving-normal-mode
" > https://dev.to/iggredible/the-only-vim-insert-mode-cheatsheet-you-ever-needed-nk9
nnoremap <silent> oo :<C-u>call append(line("."),   repeat([""], v:count1))<CR>
nnoremap <silent> OO :<C-u>call append(line(".")-1, repeat([""], v:count1))<CR>

" strip all trailing whitespace in the file
nnoremap <leader>w :%s/\s\+$//<cr>:let @/=''<cr> 

" toggle relativenumber
noremap <leader>n :set invrelativenumber <cr>  

" close current split/window/tab
noremap <leader>s :wq<cr>

" remove search highlights
noremap <silent> <leader><space> :noh<CR>

" make the tab key match bracket pairs; <tab> is a hell of a lot easier to type than %
" http://stevelosh.com/blog/2010/09/coming-home-to-vim/
nnoremap <tab> %
vnoremap <tab> %

" noremap / /\v

" open .vimrc in a vertical split 
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr><C-w><C-w>

