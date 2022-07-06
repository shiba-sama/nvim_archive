-- —————————————————————————————————————————————————————————————————————————————
-- Variables

local set = vim.keymap.set

vim.g.mapleader = ","
vim.g.localleader = ","

-- —————————————————————————————————————————————————————————————————————————————
-- Editing

set("i", "<S-Tab>", "<C-d>")  -- shift-tab for un-indent
set("v", "<", "<gv")          -- retain selection after indent
set("v", ">", ">gv")          -- retain selection after unindent

-- local rename, requires LSP setup
set("n", "<leader>rn", ":lua vim.lsp.buf.rename()<cr>", {silent = true})

-- —————————————————————————————————————————————————————————————————————————————
-- Editor Interaction

set("n", "<leader>qq", ":q!<cr>")  -- quit without saving
set("n", "<leader>ww", ":w<cr>")   -- save
set("n", ";", ":")

-- —————————————————————————————————————————————————————————————————————————————
-- Interface

set("n", "I", ":set list!<cr>")   -- toggle invisible characters
set("n", "F", "za")               -- toggle fold

-- —————————————————————————————————————————————————————————————————————————————
-- Movement

set("n", "H", "^")   -- H: jump to line start
set("n", "L", "$")   -- L: jump to line end

-- —————————————————————————————————————————————————————————————————————————————
-- Telescope

set("n", "<leader>ff", ":Telescope find_files<cr>")
set("n", "<leader>fg", ":Telescope live_grep<cr>")
set("n", "<leader>fb", ":Telescope buffers<cr>")
set("n", "<leader>fh", ":Telescope help_tags<cr>")
