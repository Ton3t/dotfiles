#!/usr/bin/env bash

install_github_cli() {

    if command -v gh >/dev/null 2>&1; then
        success "GitHub CLI ya está instalado."
        return
    fi

    info "Instalando GitHub CLI..."

    sudo mkdir -p -m 755 /etc/apt/keyrings

    wget -qO- https://cli.github.com/packages/githubcli-archive-keyring.gpg \
        | sudo tee /etc/apt/keyrings/githubcli-archive-keyring.gpg >/dev/null

    sudo chmod go+r /etc/apt/keyrings/githubcli-archive-keyring.gpg

    echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" \
        | sudo tee /etc/apt/sources.list.d/github-cli.list >/dev/null

    sudo apt update

    sudo apt install -y gh

    success "GitHub CLI instalado."

}
