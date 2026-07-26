#!/usr/bin/env bash

info() {
    printf "\033[1;34m[INFO]\033[0m %s\n" "$1"
}

success() {
    printf "\033[1;32m[SUCCESS]\033[0m %s\n" "$1"
}

warning() {
    printf "\033[1;33m[WARNING]\033[0m %s\n" "$1"
}

error() {
    printf "\033[1;31m[ERROR]\033[0m %s\n" "$1"
}

link_file() {

    local src="$1"
    local dest="$2"

    if [[ ! -f "$src" ]]; then
        warning "Saltando $src (no existe)"
        return
    fi

    if [[ -L "$dest" ]]; then
        rm "$dest"
    elif [[ -e "$dest" ]]; then
        mv "$dest" "$dest.backup"
        warning "Backup creado: $dest.backup"
    fi

    ln -s "$src" "$dest"

    success "$(basename "$dest")"
}
