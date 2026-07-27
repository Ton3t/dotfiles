#!/usr/bin/env bash

set -e

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "$ROOT_DIR/scripts/utils.sh"
source "$ROOT_DIR/scripts/packages.sh"
source "$ROOT_DIR/scripts/zsh.sh"
source "$ROOT_DIR/scripts/oh-my-zsh.sh"
source "$ROOT_DIR/scripts/symlinks.sh"

main() {
    info "====================================="
    info " Linux Development Environment"
    info "====================================="

    install_packages

    configure_zsh

    install_oh_my_zsh

    create_symlinks

    success "Instalación base completada."

    if command -v zsh >/dev/null 2>&1; then
        if [ "$SHELL" != "$(command -v zsh)" ]; then
            info "Configurando Zsh como shell por defecto..."
            chsh -s "$(command -v zsh)"
            warning "Cierra sesión y vuelve a entrar para aplicar el cambio."
        fi
    else
        error "Zsh no está instalado."
        exit 1
    fi

}

main "$@"
