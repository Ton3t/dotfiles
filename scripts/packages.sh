#!/usr/bin/env bash

install_terminal_packages() {

    local packages=(
        git
        curl
        wget
        zsh
        eza
        bat
        fzf
        zoxide
        ripgrep
        fd-find
        btop
        fastfetch
        jq
        htop
        tree
        neovim
    )

    info "Instalando herramientas de terminal..."

    sudo apt install -y "${packages[@]}"

    success "Herramientas de terminal instaladas."

}

install_packages() {

    info "Actualizando repositorios..."

    sudo apt update

    install_terminal_packages

}
