#!/usr/bin/env bash

install_fonts() {

    local fonts_dir="$HOME/.local/share/fonts"

    if fc-list | grep -qi "MesloLGS NF"; then
        success "MesloLGS NF ya está instalada."
        return
    fi

    info "Instalando MesloLGS NF..."

    mkdir -p "$fonts_dir"

    local tmp_dir
    tmp_dir=$(mktemp -d)

    curl -L \
        -o "$tmp_dir/Meslo.zip" \
        https://github.com/romkatv/powerlevel10k-media/raw/master/Meslo.zip

    unzip -o "$tmp_dir/Meslo.zip" -d "$fonts_dir"

    fc-cache -fv >/dev/null

    rm -rf "$tmp_dir"

    success "MesloLGS NF instalada."

}
