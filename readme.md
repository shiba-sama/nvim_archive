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

1. Install [Rust Analyzer][Rust Analzyer].

2. Clone repository to your `~/.config/nvim` directory.

```bash
git clone git@github.com:shiba-sama/nvim.git ~/.config/nvim
```

3. Run `nvim` and Packer autoinstallation should run. Otherwise run `:PackerInstall`.

[Rust Analzyer]: https://rust-analyzer.github.io/manual.html#vimneovim