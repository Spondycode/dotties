# Path to your oh-my-zsh inssallation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
  git
  python
  macos
  colored-man-pages
)

source $ZSH/oh-my-zsh.sh

# Example aliases
alias zcon="nvim ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"
alias lumos="eza -alh --icons=always --no-user"
alias ll="eza -lh --color=always --no-user --icons=always --group-directories-first"
# alias ls="eza --color=always --long --git --no-filesize --icons=always --no-time --no-user --no-permissions"
alias ls="eza --icons=always --group-directories-first"
alias lg="lazygit"
alias cat="bat"
alias tree="eza --tree"
alias nv="nvim"
alias brew='env PATH="${PATH//$(pyenv root)\/shims:/}" brew'
alias sss="source ~/.zshrc"
alias d="docker"
alias rm="trash"
alias c="clear"
alias e="exit"
alias ppp="pass"
alias y="yazi"
alias zel="zellij"
alias zelw="zellij -l welcome"

# alias for MySQL
alias mysql=/usr/local/mysql/bin/mysql
alias mysqladmin=/usr/local/mysql/bin/mysqladmin


# fzf aliases
# use fp to do a fzf search and preview the files
alias fp="fzf --preview 'bat --style=numbers --color=always --line-range :500 {}'"
# search for a file with fzf and open it in vim
alias vf='nv $(fp)'

alias ff="fzf | pbcopy" #find a file and put the path on clipboard

alias awa="aerospace list-windows --all"


# alias invim="nvim $(fzf --preview="bat --color=always {}")"

#Djangos

# alias pmm2="python manage.py migrate"
# alias pmts="python manage.py tailwind start"
# alias nrt="npm run tailwind"
# alias pfr="pip freeze >requirements.txt"
# alias pmsu="python manage.py createsuperuser"
# alias pmcs="python manage.py collectstatic"
# alias piup="pip install --upgrade pip"
#python manage.py collectstatic TMUX aliases

# alias ta="tmux -u -f $TMUX_CONFIG attach"
# alias tt="nvim $TMUX_CONFIG"
# alias damux="tmux new-session -A -s damux"


# VENV aliases
alias p3v="python3 -m venv venv" 
alias svba="source venv/bin/activate"


# Dirs
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."


export EDITOR='nvim'

# Note taking easy in the terminal
function note {
  echo "**note :** $(date)" >> ~/Documents/TerminalNotes.md
  echo "$@" >> ~/Documents/TerminalNotes.md
  echo " " >> ~/Documents/TerminalNotes.md
}
# Making a new folder and cd-ing into the folder
function take {
  mkdir -p $1
  cd $1
}

# managing json
# alias jj='pbpaste | jsonpp | pbcopy'
# alias jjj='pbpaste | jsonpp'


eval "$(zoxide init zsh)"

# export PATH=$PATH:/Users/cersei/Library/Python/3.11/bin


 # bun completions
[ -s "/Users/cersei/.bun/_bun" ] && source "/Users/cersei/.bun/_bun"

 # bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH="/Users/cersei/.local/bin:$PATH"


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/cersei/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/cersei/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/cersei/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/cersei/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme
# export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
export PATH="/usr/local/bin/npm:$PATH"

# Mojo / modular install
export MODULAR_HOME="$HOME/.modular"
export PATH="$MODULAR_HOME/pkg/packages.modular.com_mojo/bin:$PATH"

# Flutter
export PATH=$HOME/development/flutter/bin:$PATH

#Firebase
export PATH="$PATH":"$HOME/.pub-cache/bin"


# ------ FZF ----------
# this was in already
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh




export GEM_HOME=$HOME/.gem
export PATH=$GEM_HOME/bin:$PATH
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/ruby/lib"
export CPPFLAGS="-I/usr/local/opt/ruby/include"


# history setup
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

# completion using arrow keys (based on history)
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-backward
# source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
eval "$(atuin init zsh)"

eval "$(starship init zsh)"

eval 'eval "$(goenv init -)"'

# --- Yazi setup ---
export EDITOR="nvim"
 
  

yazi() {
  local tmpfile=$(mktemp)
  command yazi --cwd-file="$tmpfile" "$@"
  if [ -f "$tmpfile" ]; then
    local last_dir
    last_dir=$(cat "$tmpfile")
    rm -f "$tmpfile"
    if [ -d "$last_dir" ]; then
      cd "$last_dir"
    fi
  fi
}



# JJ config 

autoload -U compinit
compinit
source <(jj util completion zsh)

export PATH="$(go env GOPATH)/bin:$PATH"
