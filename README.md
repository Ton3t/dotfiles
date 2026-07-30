# 🐧 Dotfiles

Configuración automática de mi entorno de desarrollo para **Ubuntu/Kubuntu**, completamente versionada con Git y diseñada para dejar una instalación limpia lista para trabajar en pocos minutos.

El objetivo de este proyecto es automatizar toda la configuración de un nuevo sistema para que únicamente sea necesario clonar el repositorio y ejecutar un único script.

---

# ✨ Características

Actualmente el instalador configura automáticamente:

* 🖥️ Zsh como shell por defecto.
* ⚡ Oh My Zsh.
* 🎨 Powerlevel10k.
* 🔤 Fuente MesloLGS NF.
* 🔌 Plugins de Zsh.
* 🐱 Kitty Terminal.
* 📦 Herramientas de desarrollo.
* 🟢 NVM.
* 🟢 Node.js LTS.
* 🐙 GitHub CLI.
* 💻 Visual Studio Code.
* ⚙️ Configuración de VS Code.
* 🧩 Instalación automática de extensiones de VS Code.
* 🔗 Symlinks para mantener toda la configuración versionada.

---

# 📦 Software instalado

## Terminal

* git
* curl
* wget
* unzip
* zsh
* kitty

## Utilidades

* eza
* bat
* fzf
* zoxide
* ripgrep
* fd-find
* btop
* fastfetch
* jq
* htop
* tree
* neovim

## Desarrollo

* NVM
* Node.js LTS
* GitHub CLI
* Visual Studio Code

---

# 🧩 Extensiones de Visual Studio Code

El instalador instala automáticamente las extensiones definidas en:

```text
config/vscode/extensions.txt
```

Actualmente:

* Tailwind CSS IntelliSense
* Catppuccin Theme
* Catppuccin Icons
* Path Intellisense
* ESLint
* ES7 React Snippets
* GitLens
* Prettier
* Auto Rename Tag
* Dev Containers
* Docker
* Error Lens
* Markdown All in One

---

# 📁 Estructura

```text
dotfiles
├── config
│   ├── btop
│   ├── fastfetch
│   ├── git
│   ├── kitty
│   ├── vscode
│   └── zsh
│
├── scripts
│   ├── fonts.sh
│   ├── github.sh
│   ├── node.sh
│   ├── oh-my-zsh.sh
│   ├── packages.sh
│   ├── powerlevel10k.sh
│   ├── symlinks.sh
│   ├── utils.sh
│   ├── vscode.sh
│   ├── zsh-plugins.sh
│   └── zsh.sh
│
├── install.sh
└── README.md
```

---

# 🚀 Instalación

Clona el repositorio:

```bash
git clone <repositorio>
cd dotfiles
```

Da permisos al instalador:

```bash
chmod +x install.sh
```

Ejecuta la instalación:

```bash
./install.sh
```

Al finalizar, el instalador preguntará si deseas reiniciar el sistema para aplicar todos los cambios.

---

# ⚙️ Configuración

Toda la configuración se mantiene versionada mediante enlaces simbólicos.

Actualmente se gestionan:

* Kitty
* Git
* Zsh
* Powerlevel10k
* Fastfetch
* Btop
* Visual Studio Code

Modificar cualquier archivo dentro de `config/` actualiza automáticamente la configuración del sistema.

---

# 🎯 Objetivos

Este proyecto pretende convertirse en un entorno de desarrollo completamente automatizado que incluya:

* ✅ Terminal moderna
* ✅ Visual Studio Code
* 🚧 Docker
* 🚧 LazyGit
* 🚧 Neovim
* 🚧 Herramientas adicionales de desarrollo

---

# 📄 Licencia

Proyecto personal para automatizar la configuración de un entorno de desarrollo Linux.
