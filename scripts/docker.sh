#!/usr/bin/env bash

install_docker_repository() {

    if [ -f /etc/apt/sources.list.d/docker.list ]; then
        success "Repositorio de Docker ya está configurado."
        return
    fi

    info "Configurando repositorio oficial de Docker..."

    sudo install -m 0755 -d /etc/apt/keyrings

    curl -fsSL https://download.docker.com/linux/ubuntu/gpg \
        | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

    sudo chmod a+r /etc/apt/keyrings/docker.gpg

    echo \
        "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(. /etc/os-release && echo "$VERSION_CODENAME") stable" \
        | sudo tee /etc/apt/sources.list.d/docker.list >/dev/null

    sudo apt update

    success "Repositorio de Docker configurado."

}

install_docker() {

    if command -v docker >/dev/null 2>&1; then
        success "Docker ya está instalado."
        return
    fi

    info "Instalando Docker..."

    sudo apt install -y \
        docker-ce \
        docker-ce-cli \
        containerd.io \
        docker-buildx-plugin \
        docker-compose-plugin

    success "Docker instalado."

}

configure_docker() {

    if groups "$USER" | grep -qw docker; then
        success "El usuario ya pertenece al grupo docker."
        return
    fi

    info "Añadiendo usuario al grupo docker..."

    sudo usermod -aG docker "$USER"

    success "Usuario añadido al grupo docker."
    warning "Los cambios se aplicarán tras reiniciar la sesión."

}

verify_docker() {

    info "Comprobando instalación de Docker..."

    docker --version
    docker compose version

    success "Docker funciona correctamente."

}
