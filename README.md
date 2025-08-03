# 🚀 Configuración de Neovim - DevPitre

Una configuración moderna y potente de Neovim optimizada para desarrollo web y programación en general. Esta configuración incluye autocompletado inteligente, navegación mejorada, gestión de archivos, y soporte completo para LSP.

## ✨ Características

- 🎨 **Tema personalizado**: OneDark con colores optimizados
- 🔍 **Búsqueda avanzada**: Telescope para búsqueda de archivos y texto
- 📁 **Explorador de archivos**: Neo-tree integrado
- 🤖 **Autocompletado inteligente**: nvim-cmp con LSP
- 🛠️ **Soporte LSP completo**: Para múltiples lenguajes
- 🌳 **Syntax highlighting**: Tree-sitter para mejor resaltado
- 📊 **Barra de estado**: Lualine personalizada
- 🗂️ **Gestión de buffers**: Bufferline para pestañas
- ⌨️ **Keymaps intuitivos**: Configuración optimizada con Which-Key

## 📋 Requisitos Previos

- **Neovim** >= 0.8.0
- **Git**
- **Node.js** (para algunos LSPs)
- **Python** (para algunos LSPs)
- **Rust** (opcional, para rust-analyzer)

## 🚀 Instalación

### 1. Clonar la configuración

```bash
# Crear directorio de configuración de Neovim
mkdir -p ~/.config/nvim

# Clonar esta configuración
git clone https://github.com/tu-usuario/tu-repo-nvim.git ~/.config/nvim
```

### 2. Instalar Neovim

#### macOS
```bash
brew install neovim
```

#### Ubuntu/Debian
```bash
sudo apt update
sudo apt install neovim
```

#### Arch Linux
```bash
sudo pacman -S neovim
```

### 3. Instalar dependencias adicionales

```bash
# Instalar ripgrep (para búsqueda en Telescope)
# macOS
brew install ripgrep

# Ubuntu/Debian
sudo apt install ripgrep

# Arch Linux
sudo pacman -S ripgrep
```

### 4. Iniciar Neovim

```bash
nvim
```

La primera vez que inicies Neovim, se instalarán automáticamente todos los plugins necesarios.

## 🎯 Keymaps Principales

### Navegación General
- `<Space>` - Tecla líder
- `jk` - Salir del modo insertar
- `<leader>nh` - Limpiar highlights de búsqueda
- `<leader>+` - Incrementar número
- `<leader>-` - Decrementar número

### Gestión de Ventanas
- `<leader>sv` - Dividir ventana verticalmente
- `<leader>sh` - Dividir ventana horizontalmente
- `<leader>se` - Igualar tamaño de ventanas
- `<leader>sx` - Cerrar ventana actual

### Gestión de Pestañas
- `<leader>to` - Abrir nueva pestaña
- `<leader>tx` - Cerrar pestaña actual
- `<leader>tn` - Ir a siguiente pestaña
- `<leader>tp` - Ir a pestaña anterior
- `<leader>tf` - Abrir buffer actual en nueva pestaña

### Búsqueda y Navegación (Telescope)
- `<leader>ff` - Buscar archivos
- `<leader>fr` - Archivos recientes
- `<leader>fs` - Buscar texto en archivos
- `<leader>fc` - Buscar texto bajo el cursor
- `<leader>ft` - Buscar TODOs

### Explorador de Archivos (Neo-tree)
- `<leader>e` - Alternar explorador de archivos

### LSP (Language Server Protocol)
- `gd` - Ir a definición
- `gD` - Ir a declaración
- `gi` - Ir a implementación
- `gt` - Ir a definición de tipo
- `gR` - Mostrar referencias
- `K` - Mostrar documentación
- `<leader>ca` - Acciones de código
- `<leader>rn` - Renombrar símbolo
- `<leader>D` - Mostrar diagnósticos del buffer
- `<leader>d` - Mostrar diagnósticos de línea
- `[d` - Diagnóstico anterior
- `]d` - Diagnóstico siguiente
- `<leader>rs` - Reiniciar LSP

### Autocompletado (nvim-cmp)
- `<C-Space>` - Mostrar sugerencias
- `<C-j>` - Siguiente sugerencia
- `<C-k>` - Sugerencia anterior
- `<C-e>` - Cerrar autocompletado
- `<CR>` - Confirmar selección

## 🔧 Plugins Principales

### Navegación y Búsqueda
- **Telescope** - Búsqueda fuzzy de archivos y texto
- **Neo-tree** - Explorador de archivos moderno
- **Which-Key** - Descubrimiento de keymaps

### Autocompletado y LSP
- **nvim-cmp** - Motor de autocompletado
- **nvim-lspconfig** - Configuración de LSP
- **Mason** - Gestor de LSPs y formateadores
- **LuaSnip** - Sistema de snippets

### UI y Temas
- **OneDark** - Tema de color principal
- **Lualine** - Barra de estado personalizada
- **Bufferline** - Gestión de pestañas
- **nvim-web-devicons** - Iconos para archivos

### Desarrollo
- **Tree-sitter** - Parsing y highlighting mejorado
- **Comment** - Comentarios inteligentes
- **Auto-pairs** - Paréntesis automáticos
- **Surround** - Manipulación de delimitadores
- **GitSigns** - Indicadores de Git

### Herramientas Adicionales
- **Trouble** - Vista de diagnósticos
- **Todo-comments** - Gestión de TODOs
- **LazyGit** - Interfaz Git integrada
- **Copilot** - Autocompletado con IA

## 🌈 Temas Disponibles

La configuración incluye múltiples temas preconfigurados:

- **OneDark** (por defecto)
- **Catppuccin**
- **Dracula**
- **GitHub**
- **Nightfox**
- **Tokyo Dark**

Para cambiar el tema, edita `lua/devpitre/lazy.lua` y cambia la línea:
```lua
vim.cmd([[colorscheme onedark]])
```

## 🛠️ Lenguajes Soportados

### LSPs Instalados Automáticamente
- **TypeScript/JavaScript** - ts_ls
- **Python** - pyright
- **Rust** - rust_analyzer
- **Lua** - lua_ls
- **HTML/CSS** - html, cssls
- **Tailwind CSS** - tailwindcss
- **Prisma** - prismals
- **GraphQL** - graphql
- **Docker** - dockerls
- **Bash** - bashls
- **YAML** - yamlls
- **Markdown** - marksman
- **JSON** - jsonls
- **Emmet** - emmet_ls

### Tree-sitter Parsers
- JavaScript, TypeScript, TSX
- Python, Lua, Rust
- HTML, CSS, SCSS
- JSON, YAML, Markdown
- Dockerfile, Bash
- GraphQL, Prisma

## ⚙️ Configuración Personalizada

### Opciones de Vim
- Números relativos y absolutos
- Indentación de 2 espacios
- Sin wrap de líneas
- Búsqueda case-insensitive
- Colores de terminal completos
- Clipboard del sistema

### Configuración de Plugins
Todos los plugins están configurados en `lua/devpitre/plugins/` con opciones optimizadas para productividad.

## 🔄 Actualización

Para actualizar todos los plugins:

```bash
# Desde Neovim
:Lazy sync

# O desde la línea de comandos
nvim --headless -c "Lazy! sync" -c "qa"
```

## 🐛 Solución de Problemas

### LSP no funciona
1. Verifica que tienes Node.js instalado
2. Ejecuta `:Mason` para verificar instalación de LSPs
3. Reinstala los LSPs desde Mason si es necesario

### Plugins no se cargan
1. Verifica la conexión a internet
2. Ejecuta `:Lazy sync` para reinstalar plugins
3. Revisa los logs con `:Lazy log`

### Problemas de rendimiento
1. Verifica que tienes Neovim >= 0.8.0
2. Desactiva plugins innecesarios
3. Optimiza la configuración de Tree-sitter

## 📝 Contribuir

1. Fork el repositorio
2. Crea una rama para tu feature
3. Commit tus cambios
4. Push a la rama
5. Abre un Pull Request

## 📄 Licencia

Este proyecto está bajo la Licencia MIT. Ver el archivo `LICENSE` para más detalles.

## 🙏 Agradecimientos

- [LazyVim](https://github.com/LazyVim/LazyVim) por la inspiración
- [ThePrimeagen](https://github.com/ThePrimeagen) por las mejores prácticas
- [folke](https://github.com/folke) por Lazy.nvim y otros plugins increíbles

---

**¡Disfruta programando con esta configuración de Neovim! 🎉**
