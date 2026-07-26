#!/usr/bin/env bash

set -e

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "$ROOT_DIR/scripts/utils.sh"

info "====================================="
info " Linux Development Environment"
info "====================================="

info "Creando enlaces simbólicos..."
bash "$ROOT_DIR/scripts/symlinks.sh"

success "Instalación base completada."
