# Navegación
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

# Listado
alias ls="eza --icons"
alias ll="eza -lah --icons"
alias tree="eza --tree --icons"
alias la="eza -a --icons"

# Utilidades
alias cat="bat"
alias ff="fastfetch"
alias cls="clear"

# Git
alias g="git"

alias gs="git status"
alias ga="git add"
alias gaa="git add ."
alias gc="git commit"
alias gcm="git commit -m"
alias gp="git push"
alias gpl="git pull"

alias gb="git branch"
alias gco="git checkout"
alias gsw="git switch"

alias gl="git log --oneline --graph --decorate --all"
alias gd="git diff"

# Docker
alias d="docker"
alias dc="docker compose"
alias dps="docker ps"
alias dpa="docker ps -a"
alias di="docker images"
alias dup="docker compose up -d"
alias ddown="docker compose down"
alias dex="docker exec -it"
alias dlog="docker logs -f"

# Sistema
alias update="sudo apt update && sudo apt upgrade -y"
alias install="sudo apt install"
alias c="clear"
alias h="history"
alias q="exit"
alias df="df -h"
alias free="free -h"
alias ports="ss -tuln"
alias mkdir="mkdir -pv"

# Utilidades
alias cat="batcat"
alias grep="rg"
alias ff="fastfetch"
alias lg="lazygit"
alias tree="tree -C"

# Lazygit
alias lg="lazygit"
