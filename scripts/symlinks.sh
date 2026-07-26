#!/usr/bin/env bash

set -e

DOTFILES="$HOME/dotfiles/config"

echo "Creando directorios..."

mkdir -p ~/.config/kitty
mkdir -p ~/.config/zsh
mkdir -p ~/.config/fastfetch
mkdir -p ~/.config/btop
mkdir -p ~/.config/nvim

link_file() {

    SRC="$1"
    DEST="$2"

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

    echo "✓ $(basename "$DEST")"
}

configs=(
    "kitty/kitty.conf:.config/kitty/kitty.conf"
    "git/.gitconfig:.gitconfig"
    "zsh/.zshrc:.zshrc"
)

for config in "${configs[@]}"; do
    IFS=":" read -r src dest <<< "$config"
    link_file "$DOTFILES/$src" "$HOME/$dest"
done
