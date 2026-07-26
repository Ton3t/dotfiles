#!/usr/bin/env bash

create_symlinks() {

    DOTFILES="$HOME/dotfiles/config"

    info "Creando directorios..."

    mkdir -p ~/.config/kitty
    mkdir -p ~/.config/zsh
    mkdir -p ~/.config/fastfetch
    mkdir -p ~/.config/btop
    mkdir -p ~/.config/nvim
    mkdir -p ~/.config/btop/themes

link_file \
    "$DOTFILES/btop/themes/catppuccin_mocha.theme" \
    "$HOME/.config/btop/themes/catppuccin_mocha.theme"

    local configs=(
        "kitty/kitty.conf:.config/kitty/kitty.conf"
        "git/.gitconfig:.gitconfig"
        "zsh/.zshrc:.zshrc"
        "btop/btop.conf:.config/btop/btop.conf"
        "fastfetch/config.jsonc:.config/fastfetch/config.jsonc"
    )

    for config in "${configs[@]}"; do
        IFS=":" read -r src dest <<< "$config"
        link_file "$DOTFILES/$src" "$HOME/$dest"
    done

}
