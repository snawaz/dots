
call plug#begin('~/.vim/plugged')

    " ========= vim-plug ===========
    " 
    " :PlugInstall
    " :PlugUpdate
    " :PlugDiff
    " :PlugClean
    "
    " > https://github.com/junegunn/vim-plug/wiki/tutorial 
    " > https://github.com/junegunn/vim-plug
    " > https://vimawesome.com/plugin/vim-plug
    "
    " ==============================

    " a universal set of defaults that (hopefully) everyone can agree on.
    " it is mostly `set` commands.
    " see defaults.vim as provided vim, with extensive comments in it.
    " and it's better I understand each of them, and explicitly set it.
    " > https://github.com/tpope/vim-sensible
    " > https://github.com/vim/vim/blob/master/runtime/defaults.vim
    " > https://github.com/tpope/vim-sensible/issues/137
    Plug 'tpope/vim-sensible'

    " Not sure if I need it
    " lets disable it until we know why we need it.
    " Plug 'junegunn/seoul256.vim'
    
    " Git tools 
    " > https://www.reddit.com/r/vim/comments/21f4gm/best_workflow_when_using_fugitive/
    " > http://vimcasts.org/episodes/fugitive-vim---a-complement-to-command-line-git/
    " > https://github.com/jreybert/vimagit
    " > 
    Plug 'tpope/vim-fugitive'            " Various git commands
    Plug 'airblade/vim-gitgutter'        " Shows git diff on the signcolumn
    "Plug 'jreybert/vimagit'  # https://github.com/jreybert/vimagit
    
    "
    " Search and Find Tool like 'ctrlpvim/ctrlp.vim but better.
    "  - fzf.vim requires fzf binary to be installed with :FZF command
    " > https://github.com/junegunn/fzf/blob/master/README-VIM.md#fzfrun
    " > https://github.com/junegunn/fzf#using-the-finder
    " > https://github.com/junegunn/fzf.vim
    "
    Plug 'junegunn/fzf'
    Plug 'junegunn/fzf.vim'
    " Plug 'liuchengxu/vim-clap' # requires higher vim version. try :echo has('patch-8.1.2114').
    
    " Languages syntax coloring
    Plug 'rust-lang/rust.vim', { 'for': 'rust' }                  " Rust
    Plug 'lifepillar/pgsql.vim', { 'for': 'sql' }                 " PSQL
    Plug 'dag/vim-fish', { 'for': 'fish' }                        " Fish
    Plug 'cespare/vim-toml', { 'for': 'toml' }                    " Toml
    Plug 'jparise/vim-graphql', { 'for': 'graphql' }              " Graphql
    Plug 'LnL7/vim-nix', { 'for': 'nix' }                         " Nix
    Plug 'leafgarland/typescript-vim', { 'for': 'typescript' }    " Typescript 
    
    " Color schemes
    Plug 'fatih/molokai'
    
    " NerdTree
    Plug 'scrooloose/nerdtree'
    
    " Clojure
    Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
    
    " Language server client
    Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': 'bash install.sh' }
    
    " Conquer of Completion
    " It's not useful by default, unless specific extensions are installed from marketplace 
    " or elsewhere. Try ':CocList marketplace', then select extension.
    " Also note that it installs the extensions under ~/.config/coc
    "
    " > https://github.com/neoclide/coc.nvim/wiki/Using-coc-extensions
    " > https://www.reddit.com/r/vim/comments/coi4ib/my_solution_to_cocvim_packages_in_dotfiles/
    Plug 'neoclide/coc.nvim' , {'branch': 'release'}  
    
    "Plug 'ycm-core/YouCompleteMe'
    
    "
    "https://medium.com/@sidneyliebrand/how-fzf-and-ripgrep-improved-my-workflow-61c7ca212861
    "Plug 'jremmen/vim-ripgrep'
    
    " Colorful status line with varying color for each mode
    Plug 'itchyny/lightline.vim'
    
    " yet another motion like 'i' and 'a', this plugin gives us 's'
    " to be used with verbs like change, insert, delete to operate 
    " on various kind of things.
    " > https://github.com/tpope/vim-surround
    Plug 'tpope/vim-surround'
    
    " plugin that enables time travel for the changes
    " or a history visualizer, in other words
    " > https://github.com/mbbill/undotree
    Plug 'mbbill/undotree'

    " additional target objects
    " 
    " > https://github.com/wellle/targets.vim
    Plug 'wellle/targets.vim'

    Plug 'tpope/vim-unimpaired'

    " Jump to any location specified by two characters
    " 
    " > https://github.com/justinmk/vim-sneak
    Plug 'justinmk/vim-sneak'

    " support multiple cursors 
    " 
    " > https://github.com/terryma/vim-multiple-cursors
    "
    Plug 'terryma/vim-multiple-cursors'

    "
    " it allows distraction-free writing by removing lots of unecessary details from the view.
    " while it is cool, I didn't find it very useful at the moment. might try it later along with
    "
    " > https://github.com/junegunn/goyo.vim/wiki/Customization
    " 
    " Plug 'junegunn/goyo.vim'
    "
    " which works best along with 
    "
    " > https://github.com/junegunn/limelight.vim
    "
    " Plug 'junegunn/limelight.vim'
    "

    " yet another file manager which is based on vifm
    " which is terminal file manager.
    " > https://github.com/vifm/vifm.vim
    " > https://vifm.info/cheatsheets.shtml
    " > https://github.com/vifm/vifm
    " > https://vifm.info/
    "Plug 'vifm/vifm.vim'

call plug#end()

" =========================
