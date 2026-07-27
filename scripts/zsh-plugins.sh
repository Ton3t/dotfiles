#!/usr/bin/env bash

install_zsh_plugins() {

    local plugins_dir="$HOME/.oh-my-zsh/custom/plugins"

    mkdir -p "$plugins_dir"

    install_plugin() {

        local repo="$1"
        local name="$2"

        if [ -d "$plugins_dir/$name" ]; then
            success "$name ya está instalado."
            return
        fi

        info "Instalando $name..."

        git clone --depth=1 \
            "https://github.com/$repo.git" \
            "$plugins_dir/$name"

        success "$name instalado."

    }

    install_plugin zsh-users/zsh-autosuggestions zsh-autosuggestions
    install_plugin zsh-users/zsh-syntax-highlighting zsh-syntax-highlighting
    install_plugin Aloxaf/fzf-tab fzf-tab

}
