-- —————————————————————————————————————————————————————————————————————————————
-- General

vim.g.mapleader = ","
vim.g.localleader = ","
vim.keymap.set("i", "<S-Tab>", "<C-d>")  -- shift-tab for un-indent

-- —————————————————————————————————————————————————————————————————————————————
-- Telescope

vim.keymap.set('n', '<leader>ff', ':Telescope find_files<cr>')
vim.keymap.set('n', '<leader>fg', ':Telescope live_grep<cr>')
vim.keymap.set('n', '<leader>fb', ':Telescope buffers<cr>')
vim.keymap.set('n', '<leader>fh', ':Telescope help_tags<cr>')