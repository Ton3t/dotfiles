#!/usr/bin/env bash

install_lazygit() {

    if command -v lazygit >/dev/null 2>&1; then
        success "LazyGit ya está instalado."
        return
    fi

    info "Instalando LazyGit..."

    sudo apt install -y lazygit

    success "LazyGit instalado."

}
