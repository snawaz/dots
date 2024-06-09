##! #
##! # ~/.bashrc
##! #
##! 
##! # Called by bash when used as an interactive shell
##! 
##! [[ $- != *i* ]] && return
##! 
##! # Automatically adjust the values of LINES and COLUMNS after each command
##! shopt -s checkwinsize
##! 
##! # Enable bash autocompletion
##! if [[ -f /etc/bash_completion ]] && ! shopt -oq posix; then
##!   source /etc/bash_completion
##! fi
##! 
##! if [[ -f /usr/local/share/bash-completion/bash_completion ]]; then
##!   source /usr/local/share/bash-completion/bash_completion
##! fi
##! 
##! if [[ -f /usr/local/etc/bash_completion ]]; then
##!   source /usr/local/etc/bash_completion
##! fi
##! 
##! if [[ -d /usr/local/etc/bash_completion.d ]]; then
##!   for file in /usr/local/etc/bash_completion.d/*; do
##!     source "${file}"
##!   done
##! fi
##! 
##! # Enable per-user bash autocompletion if Nix is installed
##! if [[ -d ~/.nix-profile/share/bash-completion/completions ]]; then
##!   for file in ~/.nix-profile/share/bash-completion/completions/*; do
##!     source "${file}"
##!   done
##! fi
##! 
##! if [[ -d ~/.nix-profile/etc/bash_completion.d ]]; then
##!   for file in ~/.nix-profile/etc/bash_completion.d/*; do
##!     source "${file}"
##!   done
##! fi
##! 
##! # Use VTE features if available, like keeping the same CWD when opening new tabs
##! if [[ -f /etc/profile.d/vte.sh ]]; then
##!   source /etc/profile.d/vte.sh
##! fi
##! 
##! # Define our top-level dotfiles location
##! export DOTFILES="/Users/snawaz/.dotfiles"
##! export PATH="${PATH}:${DOTFILES}"
##! # export NIX_PATH="ssh-auth-sock=/tmp/nix-agentd/nix-agent.sock:ssh-config-file=/etc/nix/ssh-config-file:nixpkgs=nixpkgs=channel:nixos-20.03"
##! #export PATH="/usr/local/opt/llvm/bin:${PATH}" # let pandora user /usr/bin/clang
##! 
##! # List all scripts inside the "autoload" directory
##! files="$(find "${DOTFILES}/autoload/" -type f | sort)"
##! 
##! # Load all of them
##! for file in ${files}; do
##!   source "${file}"
##! done
##! 
##! # Clear up after we're done
##! unset files

alias gl="git log --pretty=format:'%C(bold green)%<(16)%cr %C(bold blue)%<(18)%an %C(bold red)%h%Creset | %Creset%s %C(yellow)%d%Creset' --decorate-refs-exclude=refs/tags --abbrev-commit -n 30"
alias gll="git log --pretty=format:'%C(bold green)%<(16)%cr %C(bold blue)%<(18)%an %C(bold red)%h%Creset | %Creset%s %C(bold yellow)%d%Creset' --abbrev-commit -n 20"

# pathspec: https://git-scm.com/docs/gitglossary 
alias gd="git diff -- ':(top)' ':(exclude)*.lock'"
alias gds="git diff --staged -- ':(top)' ':(exclude)*.lock'"
alias gs="git status --show-stash"
alias gp="git pull --prune"
alias gm="git checkout master"
alias gr="git rebase -i master"

alias rm="rm -i"
alias cp="cp -i"
alias mv="mv -i"
alias vim="nvim"
alias v="vim -o (fzf --preview='bat {}')" # https://www.freecodecamp.org/news/fzf-a-command-line-fuzzy-finder-missing-demo-a7de312403ff/
alias rg="rg --hidden --glob '!.git'"
alias ls="ls --color"

function set_prompt() {
  local git_branch="$(git rev-parse --abbrev-ref HEAD 2>/dev/null)"
  
  #export PS1="[\033[32m\u \033[0m@\033[36m\h \033[33m\w \033[34m${git_branch}\033[0m]≻ "
  export PS1="[\[\033[32m\]\u \[\033[0m\]@\[\033[36m\]\h \[\033[33m\]\w \[\033[34m\]${git_branch}\[\033[0m\]]≻ "
}
export -f set_prompt

export PROMPT_COMMAND="set_prompt"

export PATH=$PATH:./.

# function set_ps1 {
#   local user="${CYAN}\u${CLEAR} "
#   local host="${YELLOW}\h${CLEAR} "
#   local dir="${BLUE}\w${CLEAR} "
# 
#   local raw_git_branch="$(git rev-parse --abbrev-ref HEAD 2>/dev/null)"
#   local git_branch=""
#   [ ! -z $raw_git_branch ] && git_branch="${MAGENTA}${raw_git_branch}${CLEAR} "
# 
#   local raw_nix_ps1="${__NIX_PS1__}"
#   local nix_ps1=""
#   [ ! -z $raw_nix_ps1 ] && nix_ps1="${RED}${raw_nix_ps1}${CLEAR} "
# 
#   export PS1="[ ${user}${host}${nix_ps1}${git_branch}${dir}] "
# }
# 
# set_ps1

##! export PATH=/Users/snawaz/.cache/rebar3/bin:$PATH
##! 
##! [ -f ~/.fzf.bash ] && source ~/.fzf.bash
##! 
##! # https://direnv.net/docs/hook.html
##! eval "$(direnv hook bash)"

