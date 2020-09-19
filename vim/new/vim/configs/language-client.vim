
" LANGUAGE SERVER
"
" > https://langserver.org/
" > https://github.com/autozimu/LanguageClient-neovim/blob/next/INSTALL.md
" > https://github.com/theia-ide/typescript-language-server

let g:LanguageClient_serverCommands = {
    \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
    \ 'haskell': ['hie-wrapper', '--lsp'],
    \ 'javascript': ['/usr/local/bin/javascript-typescript-stdio'],
    \ 'typescript': ['/nix/store/xq4g9fyy95f2ra43wisfjll5irl3yn8f-nodejs-8.15.0/bin/typescript-language-server', '--stdio'],
    \ 'javascript.jsx': ['tcp://127.0.0.1:2089'],
    \ 'python': ['/usr/local/bin/pyls'],
    \ 'ruby': ['~/.rbenv/shims/solargraph', 'stdio'],
    \ }

nnoremap C :call LanguageClient_contextMenu()<CR>
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> dg :tab :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> ds :vsp :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> rr :call LanguageClient#textDocument_rename()<CR>

