<h1 align="center">🐧 Dotfiles</h1>

<p align="center">
  <img src="assets/screenshots/escritorio.png" alt="Desktop Screenshot" width="900">
</p>

<p align="center">
  Mi entorno de desarrollo para Linux, completamente automatizado y versionado con Git.
</p>

<p align="center">

![Linux](https://img.shields.io/badge/Linux-Ubuntu%20%7C%20Kubuntu-E95420?logo=ubuntu&logoColor=white)
![Shell](https://img.shields.io/badge/Shell-Zsh-89e051?logo=gnu-bash&logoColor=white)
![Terminal](https://img.shields.io/badge/Terminal-Kitty-7DCFFF)
![License](https://img.shields.io/badge/License-MIT-blue)

</p>

---

# 🐧 Dotfiles

Este repositorio contiene toda la configuración de mi entorno de desarrollo en Linux y un instalador automatizado capaz de reconstruirlo desde cero con un único comando.

El objetivo es disponer siempre del mismo entorno de trabajo en cualquier equipo, manteniendo toda la configuración versionada con Git.

---

# ✨ Características

- 🚀 Instalación automatizada con un solo comando.
- 🔗 Gestión de configuraciones mediante enlaces simbólicos.
- 💾 Copias de seguridad automáticas (`.backup`).
- 📦 Scripts modulares y fáciles de mantener.
- 🎨 Configuración de KDE Plasma y Catppuccin.
- 🖥️ Configuración completa de Zsh.
- ⚡ Powerlevel10k.
- 🔌 Plugins de Zsh.
- 📁 Proyecto preparado para seguir creciendo.

---

# 📁 Estructura del proyecto

```text
dotfiles/
├── assets/
│   └── screenshots/
│       └── escritorio.png
│
├── config/
│   ├── btop/
│   ├── fastfetch/
│   ├── git/
│   ├── kde/
│   ├── kitty/
│   ├── vscode/
│   └── zsh/
│       ├── .zshrc
│       ├── aliases.zsh
│       ├── history.zsh
│       └── plugins.zsh
│
├── scripts/
│   ├── packages.sh
│   ├── symlinks.sh
│   ├── zsh.sh
│   ├── zsh-plugins.sh
│   ├── powerlevel10k.sh
│   └── utils.sh
│
├── install.sh
└── README.md
```

---

# 📂 Organización

| Ruta | Descripción |
|------|-------------|
| `assets/` | Capturas de pantalla, fondos y otros recursos. |
| `config/` | Archivos de configuración gestionados por el instalador. |
| `scripts/` | Scripts modulares utilizados durante la instalación. |
| `install.sh` | Punto de entrada del proyecto. |

---

# 🛠 Scripts

| Script | Función |
|---------|----------|
| `install.sh` | Orquesta toda la instalación. |
| `packages.sh` | Instala las dependencias del sistema. |
| `zsh.sh` | Instala y configura Zsh y Oh My Zsh. |
| `zsh-plugins.sh` | Instala los plugins de Zsh. |
| `powerlevel10k.sh` | Instala Powerlevel10k. |
| `symlinks.sh` | Crea los enlaces simbólicos hacia los dotfiles. |
| `utils.sh` | Funciones compartidas por el resto de scripts. |

---

# 🚀 Instalación

```bash
git clone https://github.com/Ton3t/dotfiles.git
cd dotfiles
chmod +x install.sh
./install.sh
```

---

# ✅ Requisitos

- Ubuntu / Kubuntu
- Conexión a Internet
- Git instalado
- Permisos de sudo

---

# ⚙️ ¿Qué hace el instalador?

Durante la instalación se realizan automáticamente los siguientes pasos:

1. Actualiza los repositorios.
2. Instala los paquetes necesarios.
3. Instala Zsh.
4. Instala Oh My Zsh.
5. Instala Powerlevel10k.
6. Instala los plugins de Zsh.
7. Crea los enlaces simbólicos.
8. Genera copias de seguridad antes de sobrescribir archivos existentes.

---

# 📦 Software instalado

## Shell

- Zsh
- Oh My Zsh
- Powerlevel10k

## Plugins

- zsh-autosuggestions
- zsh-syntax-highlighting

## Terminal

- Kitty
- Fastfetch
- btop

## Utilidades

- Git
- Curl
- Wget
- Eza
- Bat
- FZF
- Zoxide
- Ripgrep
- fd
- jq
- htop
- Tree
- Neovim

---

# ⚙️ Configuraciones gestionadas

Actualmente el instalador configura automáticamente:

- Zsh
- Kitty
- Git
- Fastfetch
- btop
- KDE Plasma
- Tema Catppuccin

---

# 💻 Configuración de Zsh

La configuración está organizada en varios archivos para facilitar el mantenimiento.

| Archivo | Función |
|----------|----------|
| `.zshrc` | Configuración principal del shell. |
| `aliases.zsh` | Alias personalizados. |
| `plugins.zsh` | Plugins cargados por Zsh. |
| `history.zsh` | Configuración del historial. |

---

# 🗺️ Roadmap

## v1.0

- [x] Instalador modular
- [x] Gestión de dotfiles
- [x] Configuración de Git
- [x] Configuración de Kitty
- [x] Configuración de Fastfetch
- [x] Configuración de btop
- [x] Configuración de Zsh
- [x] Instalación de Oh My Zsh
- [x] Instalación de Powerlevel10k
- [x] Instalación de plugins de Zsh
- [x] Copias de seguridad automáticas

---

## v2.0

- [ ] Node.js (NVM)
- [ ] pnpm
- [ ] Docker
- [ ] Docker Compose
- [ ] GitHub CLI
- [ ] VS Code
- [ ] Neovim completo
- [ ] LazyGit
- [ ] Tmux

---

## v3.0

- [ ] Configuración completa de KDE Plasma
- [ ] Wallpapers automáticos
- [ ] Temas Catppuccin completos
- [ ] Fuentes Nerd Fonts
- [ ] Scripts de productividad
- [ ] Instalación por perfiles (Developer, Minimal, Server)

---

# 🤝 Contribuciones

Este proyecto está pensado principalmente para mi uso personal, pero cualquier sugerencia o mejora es bienvenida mediante un Issue o Pull Request.

---

# 📄 Licencia

Este proyecto está distribuido bajo la licencia **MIT**.
