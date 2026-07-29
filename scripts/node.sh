#!/usr/bin/env bash

load_nvm() {

    export NVM_DIR="$HOME/.nvm"

    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
    [ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"

}

install_nvm() {

    if [ -d "$HOME/.nvm" ]; then
        success "NVM ya está instalado."
        return
    fi

    info "Instalando NVM..."

    curl -fsSL https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | PROFILE=/dev/null bash

    success "NVM instalado."

}

install_node() {

    if command -v node >/dev/null 2>&1; then
        success "Node.js ya está instalado."
        return
    fi

    info "Instalando Node.js LTS..."

    load_nvm

    nvm install --lts
    nvm alias default "lts/*"
    nvm use default

    success "Node.js instalado."

}

install_corepack() {

    info "Activando Corepack..."

    load_nvm

    corepack enable

    success "Corepack activado."

}

install_pnpm() {

    if command -v pnpm >/dev/null 2>&1; then
        success "pnpm ya está instalado."
        return
    fi

    info "Instalando pnpm..."

    load_nvm

    corepack enable
    corepack prepare pnpm@latest --activate

    success "pnpm instalado."

}
