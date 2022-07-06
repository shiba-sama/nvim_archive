-- —————————————————————————————————————————————————————————————————————————————
-- NeoVim Configuration

require("neo.base")          -- generic configurations
require("neo.keymap")        -- hotkeys
require("neo.auto")          -- auto commands

-- —————————————————————————————————————————————————————————————————————————————
-- Plugin Configuration

require("plugins.packages")  -- packages
require("plugins.nvim-cmp")  -- completion
require("plugins.lualine")   -- status bar