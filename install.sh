#!/usr/bin/env bash

set -e

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "$ROOT_DIR/scripts/lib.sh"

main() {

    info "====================================="
    info " Linux Development Environment"
    info "====================================="

    create_symlinks

    success "Instalación base completada."

}

main "$@"
