#!/usr/bin/env bash

create_symlinks() {

    DOTFILES="$HOME/dotfiles/config"

    info "Creando directorios..."

    mkdir -p ~/.config/kitty
    mkdir -p ~/.config/zsh
    mkdir -p ~/.config/fastfetch
    mkdir -p ~/.config/btop
    mkdir -p ~/.config/btop/themes
    mkdir -p ~/.config/nvim

    # Tema de btop
    link_file \
        "$DOTFILES/btop/themes/catppuccin_mocha.theme" \
        "$HOME/.config/btop/themes/catppuccin_mocha.theme"

    # Configuración general
    local configs=(
        "kitty/kitty.conf:.config/kitty/kitty.conf"
        "git/.gitconfig:.gitconfig"
        "zsh/.zshrc:.zshrc"
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

    # Configuración específica de KDE Plasma
    if command -v plasmashell >/dev/null 2>&1; then
        info "Configurando KDE Plasma..."

        local kde_configs=(
            "kde/kdeglobals:.config/kdeglobals"
            "kde/kwinrc:.config/kwinrc"
            "kde/kcminputrc:.config/kcminputrc"
            "kde/plasmashellrc:.config/plasmashellrc"
        )

        for config in "${kde_configs[@]}"; do
            IFS=":" read -r src dest <<< "$config"
            link_file "$DOTFILES/$src" "$HOME/$dest"
        done
    fi
}
