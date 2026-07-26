#!/usr/bin/env bash

create_symlinks() {

    DOTFILES="$HOME/dotfiles/config"

    info "Creando directorios..."

    mkdir -p ~/.config/kitty
    mkdir -p ~/.config/zsh
    mkdir -p ~/.config/fastfetch
    mkdir -p ~/.config/btop
    mkdir -p ~/.config/nvim

    link_file() {

        local SRC="$1"
        local DEST="$2"

        if [ ! -f "$SRC" ]; then
            echo "Saltando $SRC (no existe)"
            return
        fi

        if [ -L "$DEST" ]; then
            rm "$DEST"
        elif [ -f "$DEST" ]; then
            mv "$DEST" "$DEST.backup"
        fi

        ln -s "$SRC" "$DEST"

        success "$(basename "$DEST")"

    }

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
