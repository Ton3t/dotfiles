# 🐧 Dotfiles

Configuración de mi entorno de desarrollo para Linux, completamente automatizada y versionada con Git.

El objetivo de este proyecto es poder clonar el repositorio en una instalación limpia y tener mi entorno de trabajo listo con un único comando.

---

## ✨ Características

* Instalación automática mediante un único script.
* Estructura modular y fácil de mantener.
* Configuración mediante enlaces simbólicos.
* Idempotente: puede ejecutarse varias veces sin romper la instalación.
* Fácil de ampliar con nuevos módulos.

---

## 📦 Software instalado

El instalador configura automáticamente las siguientes herramientas:

* Git
* Curl
* Wget
* Unzip
* Kitty
* Zsh
* Oh My Zsh
* Powerlevel10k
* zsh-autosuggestions
* zsh-syntax-highlighting
* fzf-tab
* eza
* bat
* fzf
* zoxide
* ripgrep
* fd
* btop
* Fastfetch
* jq
* htop
* tree
* Neovim

---

## ⚙️ Configuraciones gestionadas

Actualmente el repositorio versiona la configuración de:

* Kitty
* Zsh
* Powerlevel10k
* Git
* Fastfetch
* btop

---

## 📁 Estructura del proyecto

```text
dotfiles/
├── config/
│   ├── btop/
│   ├── fastfetch/
│   ├── git/
│   ├── kitty/
│   └── zsh/
├── fonts/
│   └── MesloLGSNF/
├── scripts/
│   ├── fonts.sh
│   ├── oh-my-zsh.sh
│   ├── packages.sh
│   ├── powerlevel10k.sh
│   ├── symlinks.sh
│   ├── utils.sh
│   ├── zsh-plugins.sh
│   └── zsh.sh
├── install.sh
└── README.md
```

---

## 🚀 Instalación

Clona el repositorio:

```bash
git clone https://github.com/Ton3t/dotfiles.git
```

Entra en la carpeta:

```bash
cd dotfiles
```

Da permisos de ejecución:

```bash
chmod +x install.sh
```

Ejecuta el instalador:

```bash
./install.sh
```

---

## 📝 Notas

* El instalador configura **Zsh** como shell por defecto.
* Kitty se instala y queda configurado automáticamente.
* Si utilizas un entorno de escritorio (KDE, GNOME, etc.), el terminal predeterminado puede seguir siendo el que venga configurado por defecto. Kitty podrá seleccionarse manualmente desde las preferencias del sistema.

---

## 🛣️ Roadmap

### v1.0

* [x] Instalador modular
* [x] Instalación automática de paquetes
* [x] Kitty
* [x] Zsh
* [x] Oh My Zsh
* [x] Powerlevel10k
* [x] Plugins de Zsh
* [x] MesloLGS NF
* [x] Git
* [x] Fastfetch
* [x] btop

### v1.1

* [ ] Node.js (NVM)
* [ ] Corepack + pnpm
* [ ] GitHub CLI

### v2.0

* [ ] Docker
* [ ] VS Code
* [ ] Neovim

---

## 🤝 Contribuciones

Si encuentras algún problema o tienes una sugerencia para mejorar el proyecto, no dudes en abrir una *Issue* o enviar un *Pull Request*.

---

## 📄 Licencia

Este proyecto está distribuido bajo la licencia MIT.
