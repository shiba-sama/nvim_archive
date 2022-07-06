# NeoVim Configuration

This configuration is "mostly modular" in the sense that dependencies are 
obvious and removal is easy.

| file           | about                  | modular |
| -------------- | ---------------------- | ------- |
| `base.lua`     | generic configurations | ✓       |
| `keymap.lua`   | keymaps                | ✗       |
| `auto.lua`     | autocommands           | ✓       |
| `packages.lua` | installed packages     | ✓       |
| `lualine.lua`  | status bar             | ✗       |
| `nvim-cmp.lua` | plugin configuration   | ✗       |