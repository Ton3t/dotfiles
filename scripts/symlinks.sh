#!/usr/bin/env bash

create_symlinks() {

    DOTFILES="$HOME/dotfiles/config"

    info "Creando directorios..."

    mkdir -p ~/.config/kitty
    mkdir -p ~/.config/zsh
    mkdir -p ~/.config/fastfetch
    mkdir -p ~/.config/btop
    mkdir -p ~/.config/nvim

    local configs=(
        "kitty/kitty.conf:.config/kitty/kitty.conf"
        "git/.gitconfig:.gitconfig"
        "zsh/.zshrc:.zshrc"
    )

    for config in "${configs[@]}"; do
        IFS=":" read -r src dest <<< "$config"
        link_file "$DOTFILES/$src" "$HOME/$dest"
    done

}
