# NeoVim Configuration

This mostly Lua configuration is mostly modular in the sense that dependencies 
are obvious and removal is easy.

| file           | about                  | modular |
| -------------- | ---------------------- | ------- |
| `base.lua`     | generic configurations | ✓       |
| `keymap.lua`   | keymaps                | ✗       |
| `auto.lua`     | autocommands           | ✓       |
| `packages.lua` | package manifest       | ✓       |
| `lualine.lua`  | status bar             | ✗       |
| `nvim-cmp.lua` | plugin configuration   | ✗       |

# Installation

1. Clone repository to your `~/.config/nvim` directory.

```bash
git clone git@github.com:shiba-sama/nvim.git ~/.config/nvim
```

2. Run `nvim` and Packer autoinstallation should run. Packer will prompt you 
   when new packages are added to removed from `packages.lua`.