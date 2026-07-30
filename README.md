# 🐧 Dotfiles

Un entorno de desarrollo para Linux completamente automatizado, reproducible y versionado con Git.

Con un solo comando podrás configurar un sistema nuevo con todas las herramientas que utilizo para desarrollar aplicaciones web.

---

## ✨ Características

* 🚀 Instalación completamente automatizada.
* 📦 Estructura modular basada en scripts.
* 🔗 Configuración mediante symlinks.
* 🖥️ Terminal moderna con Zsh + Powerlevel10k.
* 🎨 Kitty configurado con Catppuccin Mocha.
* 💻 Visual Studio Code listo para usar.
* 📦 Node.js LTS mediante NVM.
* 🐳 Docker y Docker Compose.
* 🌐 GitHub CLI.
* 🌳 LazyGit.
* ⚡ Alias útiles para el día a día.
* 🔄 Probado en máquinas virtuales desde cero.

---

# 📂 Estructura del proyecto

```text
 dotfiles
├── 󰊢 .gitignore
├──  config
│   ├──  btop
│   │   ├── 󱁻 btop.conf
│   │   └──  themes
│   ├──  fastfetch
│   │   └──  config.jsonc
│   ├──  git
│   │   └── 󰊢 .gitconfig
│   ├──  kitty
│   │   └── 󱁻 kitty.conf
│   ├──  vscode
│   │   ├──  extensions.txt
│   │   ├──  keybindings.json
│   │   └──  settings.json
│   └──  zsh
│       ├──  .p10k.zsh
│       ├── 󱆃 .zshrc
│       ├──  aliases.zsh
│       ├──  history.zsh
│       └──  plugins.zsh
├──  fonts
│   └──  MesloLGSNF
│       ├──  MesloLGS_NF_Bold.ttf
│       ├──  MesloLGS_NF_Bold_Italic.ttf
│       ├──  MesloLGS_NF_Italic.ttf
│       └──  MesloLGS_NF_Regular.ttf
├──  install.sh
├── 󰂺 README.md
└──  scripts
    ├──  config
    │   └──  vscode
    ├──  docker.sh
    ├──  fonts.sh
    ├──  github.sh
    ├──  lazygit.sh
    ├──  node.sh
    ├──  oh-my-zsh.sh
    ├──  packages.sh
    ├──  powerlevel10k.sh
    ├──  symlinks.sh
    ├──  utils.sh
    ├──  vscode.sh
    ├──  zsh-plugins.sh
    └──  zsh.sh
```

---

# ⚙️ ¿Qué instala?

## Sistema

* Git
* Curl
* Wget
* Unzip
* Tree
* Bat
* Eza
* FZF
* Zoxide
* Ripgrep
* fd
* Btop
* Fastfetch
* jq
* Htop

---

## Terminal

* Zsh
* Oh My Zsh
* Powerlevel10k
* MesloLGS NF
* Kitty
* Plugins:

  * zsh-autosuggestions
  * zsh-syntax-highlighting
  * fzf-tab

---

## Desarrollo

* NVM
* Node.js LTS
* GitHub CLI
* Docker
* Docker Compose
* LazyGit
* Visual Studio Code

---

## Visual Studio Code

El instalador configura automáticamente:

* Settings
* Keybindings
* Extensiones

Extensiones incluidas:

* Tailwind CSS IntelliSense
* ESLint
* Prettier
* Error Lens
* GitLens
* Docker
* Containers
* Path Intellisense
* ES7 React Snippets
* Auto Rename Tag
* Markdown All in One
* Catppuccin Theme
* Catppuccin Icons

---

# 🚀 Instalación

```bash
git clone https://github.com/Ton3t/dotfiles.git

cd dotfiles

chmod +x install.sh

./install.sh
```

Al finalizar la instalación se solicitará reiniciar el equipo para aplicar todos los cambios.

---

# 🐳 Docker

El instalador configura automáticamente:

* Repositorio oficial de Docker.
* Docker Engine.
* Docker Compose Plugin.
* Grupo `docker`.
* Verificación de la instalación.

---

# 🌳 Git

También instala y configura:

* Git
* GitHub CLI
* LazyGit

---

# 💻 Visual Studio Code

Además de instalar VS Code, el proyecto sincroniza automáticamente:

* Configuración
* Atajos de teclado
* Extensiones

Todo queda listo para empezar a trabajar.

---

# 📌 Filosofía

Este proyecto busca ser:

* Modular.
* Fácil de mantener.
* Fácil de ampliar.
* Reproducible.
* Rápido de instalar.

Cada componente dispone de su propio script independiente para facilitar su mantenimiento.

---

# 📄 Licencia

Proyecto personal creado para automatizar la configuración de mi entorno de desarrollo en Linux.
