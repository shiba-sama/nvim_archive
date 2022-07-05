-- —————————————————————————————————————————————————————————————————————————————
-- Variables

vim.g.mapleader = ","
vim.g.localleader = ","

-- —————————————————————————————————————————————————————————————————————————————
-- Editing

vim.keymap.set("i", "<S-Tab>", "<C-d>")  -- shift-tab for un-indent
vim.keymap.set("v", "<", "<gv")          -- retain selection after indent
vim.keymap.set("v", ">", ">gv")          -- retain selection after unindent

-- —————————————————————————————————————————————————————————————————————————————
-- Saving and Quitting

vim.keymap.set("n", "<leader>qq", ":q!<cr>")  -- quit without saving

-- —————————————————————————————————————————————————————————————————————————————
-- Interface

vim.keymap.set("n", "<leader>@", ":set list!<cr>")  -- toggle invisible characters

-- —————————————————————————————————————————————————————————————————————————————
-- Telescope

vim.keymap.set('n', '<leader>ff', ':Telescope find_files<cr>')
vim.keymap.set('n', '<leader>fg', ':Telescope live_grep<cr>')
vim.keymap.set('n', '<leader>fb', ':Telescope buffers<cr>')
vim.keymap.set('n', '<leader>fh', ':Telescope help_tags<cr>')