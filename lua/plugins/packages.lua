-- ref: https://github.com/wbthomason/packer.nvim
local fn = vim.fn

-- —————————————————————————————————————————————————————————————————————————————
-- Packer Automation

-- Automatically install Packer
-- ref: https://github.com/wbthomason/packer.nvim
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
   PACKER_BOOTSTRAP = fn.system {
      "git",
      "clone",
      "--depth",
      "1",
      "https://github.com/wbthomason/packer.nvim",
      install_path,
   }
   print "Installing packer close and reopen Neovim..."
   vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
-- ref: https://github.com/wbthomason/packer.nvim
vim.cmd [[
   augroup packer_user_config
      autocmd!
      autocmd BufWritePost packages.lua source <afile> | PackerSync
   augroup end
]]

-- Autocommand that reloads neovim whenever you save the plugins.lua file
-- ref: https://github.com/wbthomason/packer.nvim
vim.cmd [[
   augroup packer_user_config
      autocmd!
      autocmd BufWritePost packages.lua source <afile> | PackerSync
   augroup end
]]

-- Use a protected call so we don"t error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
   return
end

-- —————————————————————————————————————————————————————————————————————————————
-- Packages

return packer.startup(function(use)
   use "wbthomason/packer.nvim"        -- let Packer manage itself
   use "nvim-lua/popup.nvim"           -- Popup API
   use "nvim-lua/plenary.nvim"         -- Lua functions as deps for many plugins
   use "neovim/nvim-lspconfig"         -- enable LSP
   -- use "github/copilot.vim"            -- Microsoft Copilot
   use {                               -- status bar
      "nvim-lualine/lualine.nvim",
      requires = { "kyazdani42/nvim-web-devicons", opt = true },
   }
   use {
      "nvim-telescope/telescope.nvim", -- beautiful find file interface
      requires = {{ "nvim-lua/plenary.nvim" }}
   }
   use {                               -- autocompletion
      "hrsh7th/nvim-cmp",
      requires = {
         "L3MON4D3/LuaSnip",
         "hrsh7th/cmp-nvim-lsp",
         "hrsh7th/cmp-path",
         "hrsh7th/cmp-buffer",
         "saadparwaiz1/cmp_luasnip",
      },
   }

   -- ————————————————————————————————————————————
   -- Themes

   use "tanvirtin/monokai.nvim"
   use "EdenEast/nightfox.nvim"
   use "jacoborus/tender.vim"

end)
