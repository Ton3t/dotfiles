#!/usr/bin/env bash

install_vscode() {

    if command -v code >/dev/null 2>&1; then
        success "Visual Studio Code ya está instalado."
        return
    fi

    info "Instalando Visual Studio Code..."

    sudo mkdir -p /etc/apt/keyrings

    wget -qO- https://packages.microsoft.com/keys/microsoft.asc \
        | gpg --dearmor \
        | sudo tee /etc/apt/keyrings/packages.microsoft.gpg >/dev/null

    echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" \
        | sudo tee /etc/apt/sources.list.d/vscode.list >/dev/null

    sudo apt update

    sudo apt install -y code

    success "Visual Studio Code instalado."

}

install_vscode_extensions() {

    if ! command -v code >/dev/null 2>&1; then
        warning "Visual Studio Code no está instalado."
        return
    fi

    if [ ! -f "$ROOT_DIR/config/vscode/extensions.txt" ]; then
        warning "No existe config/vscode/extensions.txt"
        return
    fi

    info "Instalando extensiones de Visual Studio Code..."

    while IFS= read -r extension; do

        [ -z "$extension" ] && continue

        code --install-extension "$extension" --force >/dev/null 2>&1

        success "$extension"

    done < "$ROOT_DIR/config/vscode/extensions.txt"

    success "Extensiones de Visual Studio Code instaladas."

}
