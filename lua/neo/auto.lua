-- —————————————————————————————————————————————————————————————————————————————
-- Variables

local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

-- —————————————————————————————————————————————————————————————————————————————
-- Auto Commands

-- ref: https://jeffkreeftmeijer.com/vim-number/
-- Change line number mode when switching between panes
vim.cmd [[
   augroup numbertoggle
      autocmd!
      autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
      autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
   augroup END
]]

-- Remove whitespace on save
autocmd('BufWritePre', {
   pattern = '*',
   command = ":%s/\\s\\+$//e"
})

-- Highlight on yank
augroup('YankHighlight', { clear = true })
autocmd('TextYankPost', {
   group = 'YankHighlight',
   callback = function()
      vim.highlight.on_yank({ higroup = 'IncSearch', timeout = '1000' })
   end
})