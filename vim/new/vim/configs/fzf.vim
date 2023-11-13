
" fzf settings 
" todo: remove unecessary mapping if used, so that keys can be used elsewhere
"
" > https://github.com/junegunn/fzf.vim
" > https://jesseleite.com/posts/2/its-dangerous-to-vim-alone-take-fzf
" > https://www.freecodecamp.org/news/fzf-a-command-line-fuzzy-finder-missing-demo-a7de312403ff/
"
nnoremap <silent> <C-p> :<C-u>:GFiles<CR>
nnoremap <silent> <C-y> :<C-u>:Files<CR>
nnoremap <silent> <C-b> :<C-u>:Buffers<CR>
nnoremap <silent> <C-r> :<C-u>:Rg<CR>
nnoremap <silent> <C-f> :<C-u>:History<CR>
nnoremap <silent> <leader><leader> :<C-u>:BLines<CR>

"let g:fzf_preview_window = 'right:60%'
let g:fzf_preview_window = 'right:50%'

" Floating FZF window
" 
" https://github.com/junegunn/fzf.vim/issues/664
"
if has('nvim')
  let $FZF_DEFAULT_OPTS .= ' --layout=reverse'
  let g:fzf_layout = { 'window': 'call FloatingFZF()' }

  function! FloatingFZF()
    let width = float2nr(&columns * 0.95)
	let height = float2nr(&lines * 0.8)
	let opts = { 'relative': 'editor',
		   \ 'row': (&lines - height) / 2,
		   \ 'col': (&columns - width) / 2 + 3,
		   \ 'width': width,
		   \ 'height': height,
		   \ 'style': 'minimal'
		   \}

    let buf = nvim_create_buf(v:false, v:true)
    call setbufvar(buf, '&signcolumn', 'no')
    let win = nvim_open_win(buf, v:true, opts)
    " silent! call setwinvar(win, '&winhighlight', 'Pmenu:Pmenu,PmenuSel:PmenuSel')
  endfunction
endif

