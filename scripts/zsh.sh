#!/usr/bin/env bash

install_zsh() {

    install_oh_my_zsh

    install_powerlevel10k

    install_zsh_plugins

    if [ "$SHELL" != "$(command -v zsh)" ]; then
        info "Configurando Zsh como shell por defecto..."
        chsh -s "$(command -v zsh)"
        warning "Cierra sesión y vuelve a entrar para aplicar el cambio."
    else
        success "Zsh ya es el shell por defecto."
    fi

}
