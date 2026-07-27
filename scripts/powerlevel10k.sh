#!/usr/bin/env bash

install_powerlevel10k() {

    local theme_dir="$HOME/.oh-my-zsh/custom/themes/powerlevel10k"

    if [ -d "$theme_dir" ]; then
        success "Powerlevel10k ya está instalado."
        return
    fi

    info "Instalando Powerlevel10k..."

    git clone --depth=1 \
        https://github.com/romkatv/powerlevel10k.git \
        "$theme_dir"

    success "Powerlevel10k instalado."

}
