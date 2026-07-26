# 🐧 Dotfiles

Mi entorno de desarrollo para Linux, completamente automatizado y versionado con Git.

## 🎯 Objetivo

Este repositorio me permite reconstruir mi entorno de desarrollo desde cero en pocos minutos. Todas las configuraciones se almacenan en Git y el proceso de instalación está automatizado mediante scripts modulares.

## ✨ Características

- Instalación con un solo comando.
- Configuraciones centralizadas en `config/`.
- Scripts modulares y fáciles de ampliar.
- Gestión mediante enlaces simbólicos.
- Pensado para Kubuntu, pero adaptable a otras distribuciones.

## 📁 Estructura

```text
dotfiles/
├── config/
│   ├── btop/
│   ├── fastfetch/
│   ├── git/
│   ├── kitty/
│   ├── vscode/
│   └── zsh/
├── scripts/
│   ├── lib.sh
│   ├── packages.sh
│   ├── symlinks.sh
│   └── utils.sh
├── install.sh
└── README.md
```

## 🚀 Instalación

```bash
git clone https://github.com/Ton3t/dotfiles.git
cd dotfiles
chmod +x install.sh
./install.sh
```

## 📦 Software instalado

- Git
- Curl
- Wget
- Eza
- Bat
- FZF
- Zoxide
- Ripgrep
- fd
- btop
- Fastfetch
- jq
- htop
- Tree
- Neovim

## ⚙️ Configuraciones gestionadas

- Zsh
- Kitty
- Git
- btop
- Fastfetch

## 🗺️ Roadmap

### v1.0
- [x] Instalador modular
- [x] Configuración de Zsh
- [x] Configuración de Kitty
- [x] Configuración de Git
- [x] Configuración de btop
- [x] Configuración de Fastfetch

### v2.0
- [ ] Node.js
- [ ] Docker
- [ ] VS Code
- [ ] Neovim
- [ ] GitHub CLI

### v3.0
- [ ] Personalización de KDE Plasma
- [ ] Temas Catppuccin
- [ ] Scripts de productividad

## 📄 Licencia

Pendiente de definir.
