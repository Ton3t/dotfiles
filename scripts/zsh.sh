#!/usr/bin/env bash

configure_zsh() {

    if ! command -v zsh >/dev/null 2>&1; then
        error "Zsh no está instalado."
        exit 1
    fi

    if [ "$SHELL" != "$(command -v zsh)" ]; then
        info "Configurando Zsh como shell por defecto..."
        chsh -s "$(command -v zsh)"
        warning "Cierra sesión y vuelve a entrar para aplicar el cambio."
    else
        success "Zsh ya es el shell por defecto."
    fi

}
