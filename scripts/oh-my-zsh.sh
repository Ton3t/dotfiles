#!/usr/bin/env bash

install_oh_my_zsh() {

    if [ -d "$HOME/.oh-my-zsh" ]; then
        success "Oh My Zsh ya está instalado."
        return
    fi

    info "Instalando Oh My Zsh..."

    RUNZSH=no CHSH=no KEEP_ZSHRC=yes \
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

    success "Oh My Zsh instalado."

}
