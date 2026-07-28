#!/usr/bin/env bash

create_symlinks() {

    local DOTFILES="$ROOT_DIR/config"

    info "Creando directorios..."

    mkdir -p "$HOME/.config/kitty"
    mkdir -p "$HOME/.config/zsh"
    mkdir -p "$HOME/.config/fastfetch"
    mkdir -p "$HOME/.config/btop/themes"
    mkdir -p "$HOME/.config/nvim"

    # Tema de btop
    link_file \
        "$DOTFILES/btop/themes/catppuccin_mocha.theme" \
        "$HOME/.config/btop/themes/catppuccin_mocha.theme"

    # Configuración general
    local configs=(
        "kitty/kitty.conf:.config/kitty/kitty.conf"
        "git/.gitconfig:.gitconfig"
        "zsh/.zshrc:.zshrc"
        "zsh/.p10k.zsh:.p10k.zsh"
        "zsh/aliases.zsh:.config/zsh/aliases.zsh"
        "zsh/history.zsh:.config/zsh/history.zsh"
        "zsh/plugins.zsh:.config/zsh/plugins.zsh"
        "btop/btop.conf:.config/btop/btop.conf"
        "fastfetch/config.jsonc:.config/fastfetch/config.jsonc"
    )

    for config in "${configs[@]}"; do
        IFS=":" read -r src dest <<< "$config"
        link_file "$DOTFILES/$src" "$HOME/$dest"
    done

}
