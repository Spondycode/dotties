if status is-interactive
    # Commands to run in interactive sessions can go here
end

function y
    set tmp (mktemp -t "yazi-cwd.XXXXXX")
    yazi $argv --cwd-file="$tmp"
    if set cwd (command cat -- "$tmp"); and test -n "$cwd"; and test "$cwd" != "$PWD"
        builtin cd -- "$cwd"
    end
    rm -f -- "$tmp"
end

function nv
    nvim $argv
end

function gs
    git status $argv
end

function lg
    lazygit $argv
end

funcsave lg

abbr --add c command clear

# Aliases from zsh
alias lumos="eza -alh --icons=always --no-user --group-directories-first"
alias ll="eza -lh --color=always --no-user --icons=always --group-directories-first"
# alias ls="eza --color=always --long --git --no-filesize --icons=always --no-time --no-user --no-permissions"
alias ls="eza --icons=always --group-directories-first"
alias tree="eza --tree"

alias zel="zellij"
alias zelw="zellij -l welcome"
alias pbp="pbpaste"

# Dirs
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

# FZF
alias sf="fd --type f --hidden --exclude .git | fzf --multi --preview 'bat --color=always {}'| xargs nvim"

## FZF Keybindings ##
#Ctrl-t = fzf select
#Ctrl-r = fzf history
#Alt-c = fzf cd
fzf --fish | source

## FZF_Defaults ##
set FZF_DEFAULT_OPTS "--layout=reverse --border=bold --border=rounded --margin=3% --color=dark"

eval (/opt/homebrew/bin/brew shellenv)
set -Ux EDITOR nvim
set -Ux VISUAL nvim

starship init fish | source
zoxide init fish | source
