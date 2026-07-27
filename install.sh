#!/usr/bin/env bash

set -e

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "$ROOT_DIR/scripts/utils.sh"
source "$ROOT_DIR/scripts/packages.sh"
source "$ROOT_DIR/scripts/symlinks.sh"

source "$ROOT_DIR/scripts/oh-my-zsh.sh"
source "$ROOT_DIR/scripts/powerlevel10k.sh"
source "$ROOT_DIR/scripts/zsh-plugins.sh"
source "$ROOT_DIR/scripts/zsh.sh"

main() {

    info "====================================="
    info " Linux Development Environment"
    info "====================================="

    install_packages

    install_zsh

    create_symlinks

    success "Instalación base completada."

}

main "$@"
