#!/usr/bin/env bash

install_fonts() {

    local fonts_dir="$HOME/.local/share/fonts"

    if fc-list | grep -qi "MesloLGS NF"; then
        success "MesloLGS NF ya está instalada."
        return
    fi

    info "Instalando MesloLGS NF..."

    mkdir -p "$fonts_dir"

    cp "$ROOT_DIR"/fonts/MesloLGSNF/*.ttf "$fonts_dir/"

    fc-cache -fv >/dev/null

    success "MesloLGS NF instalada."

}
