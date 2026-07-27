#!/usr/bin/env bash

set -e

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "$ROOT_DIR/scripts/utils.sh"
source "$ROOT_DIR/scripts/packages.sh"
source "$ROOT_DIR/scripts/symlinks.sh"
source "$ROOT_DIR/scripts/fonts.sh"
source "$ROOT_DIR/scripts/oh-my-zsh.sh"
source "$ROOT_DIR/scripts/powerlevel10k.sh"
source "$ROOT_DIR/scripts/zsh-plugins.sh"
source "$ROOT_DIR/scripts/zsh.sh"
source "$ROOT_DIR/scripts/themes.sh"

main() {

    info "====================================="
    info " Linux Development Environment"
    info "====================================="

    install_packages

    install_fonts

    install_zsh

    install_themes

    create_symlinks

    success "Instalación base completada."

}

main "$@"
