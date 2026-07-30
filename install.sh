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
source "$ROOT_DIR/scripts/node.sh"
source "$ROOT_DIR/scripts/github.sh"
source "$ROOT_DIR/scripts/vscode.sh"
source "$ROOT_DIR/scripts/docker.sh"
source "$ROOT_DIR/scripts/lazygit.sh"

main() {

    info "====================================="
    info " Linux Development Environment"
    info "====================================="

    install_packages

    install_fonts

    install_zsh

    create_symlinks

    install_nvm
    install_node

    install_github_cli

    install_lazygit

    install_vscode
    install_vscode_extensions

    install_docker_repository
    install_docker
    configure_docker
    verify_docker

    success "Instalación base completada."

    echo
    info "La instalación ha finalizado."
    echo

    read -rp "¿Deseas reiniciar el sistema ahora? [Y/n] " answer

    case "$answer" in
        [Nn]*)
            info "Puedes reiniciar más tarde para aplicar todos los cambios."
            ;;
        *)
            info "Reiniciando..."
            sudo reboot
            ;;
    esac

}

main "$@"
