# 🚀 Dotfiles

Mi entorno de desarrollo para Linux, creado desde cero y completamente automatizado.

Este repositorio contiene todos mis archivos de configuración (*dotfiles*) y los scripts necesarios para configurar un sistema Linux recién instalado con las herramientas que utilizo a diario.

El objetivo es poder preparar un nuevo equipo con el menor número posible de pasos manuales y mantener toda la configuración versionada con Git.

---

# ✨ Características

Actualmente el proyecto incluye o incluirá:

- 🐚 Zsh
- ⚡ Powerlevel10k
- 🖥️ Kitty
- 🎨 Tema Catppuccin
- 🔗 Enlaces simbólicos automáticos
- 📦 Instalación automática de paquetes
- ⚙️ Scripts modulares
- 💻 VS Code
- 🐳 Docker
- 📦 Node.js mediante NVM
- 📊 Fastfetch
- 📈 btop
- ✍️ Neovim

---

# 📂 Estructura del proyecto

```text
dotfiles/
├── config/
│   ├── btop/
│   ├── fastfetch/
│   ├── git/
│   ├── kitty/
│   ├── nvim/
│   ├── vscode/
│   └── zsh/
│
├── scripts/
│   ├── docker.sh
│   ├── fonts.sh
│   ├── git.sh
│   ├── node.sh
│   ├── packages.sh
│   ├── symlinks.sh
│   └── utils.sh
│
├── install.sh
└── README.md
```

---

# 🚀 Instalación

Clona el repositorio:

```bash
git clone https://github.com/Ton3t/dotfiles.git
cd dotfiles
```

Ejecuta el instalador:

```bash
./install.sh
```

---

# 📋 Hoja de ruta

## Base del sistema

- [x] Git
- [x] Zsh
- [x] Powerlevel10k
- [x] Kitty
- [x] Dotfiles

## Herramientas de desarrollo

- [ ] Node.js (NVM)
- [ ] Docker
- [ ] VS Code
- [ ] Neovim
- [ ] LazyGit

## Personalización

- [ ] Fastfetch
- [ ] btop
- [ ] Tema Catppuccin completo
- [ ] Personalización de KDE Plasma
- [ ] Fuentes e iconos

## Automatización

- [ ] Instalación con un solo comando
- [ ] Detección automática de la distribución
- [ ] Scripts idempotentes
- [ ] Instalación por módulos

---

# 🎯 Objetivos

- Automatizar la configuración de un sistema Linux.
- Mantener toda la configuración bajo control de versiones.
- Facilitar la reinstalación de un equipo desde cero.
- Disponer de una estructura clara y fácil de mantener.
- Aprender y documentar el proceso de personalización de Linux.

---

# 📝 Licencia

Este proyecto se distribuye bajo la licencia MIT.

# 📌 Estado actual

| Componente | Estado |
|------------|--------|
| Kubuntu | ✅ |
| Git | ✅ |
| Zsh | ✅ |
| Powerlevel10k | ✅ |
| Kitty | ✅ |
| Dotfiles | ✅ |
| Fastfetch | ⏳ |
| btop | ⏳ |
| Docker | ⏳ |
| Node.js | ⏳ |
| VS Code | ⏳ |
| Neovim | ⏳ |
