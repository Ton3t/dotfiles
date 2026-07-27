#!/usr/bin/env bash

install_themes() {

    local themes_dir="$ROOT_DIR/themes"

    info "Instalando temas KDE..."

    mkdir -p "$HOME/.local/share/color-schemes"
    mkdir -p "$HOME/.local/share/plasma/look-and-feel"

    cp -f "$themes_dir/color-schemes/"*.colors \
        "$HOME/.local/share/color-schemes/"

    cp -r "$themes_dir/plasma/look-and-feel/"* \
        "$HOME/.local/share/plasma/look-and-feel/"

    if command -v plasma-apply-colorscheme >/dev/null 2>&1; then
        plasma-apply-colorscheme CatppuccinMocha >/dev/null 2>&1 || true
    fi

    if command -v plasma-apply-lookandfeel >/dev/null 2>&1; then
        plasma-apply-lookandfeel --apply Catppuccin.Mocha >/dev/null 2>&1 || true
    fi

    success "Temas KDE instalados."

}
