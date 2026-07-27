#!/usr/bin/env bash

set -e

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "$ROOT_DIR/scripts/utils.sh"
source "$ROOT_DIR/scripts/packages.sh"
source "$ROOT_DIR/scripts/symlinks.sh"

main() {
    info "====================================="
    info " Linux Development Environment"
    info "====================================="

    info "Actualizando e instalando paquetes..."
    install_packages

    info "Creando enlaces simbólicos..."
    create_symlinks

    success "Instalación base completada."
}

main "$@"
