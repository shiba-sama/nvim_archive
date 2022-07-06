-- —————————————————————————————————————————————————————————————————————————————
-- Variables

local g = vim.g
local set = vim.opt

-- —————————————————————————————————————————————————————————————————————————————
-- Base

set.completeopt = {            -- insert mode autocomplete
   "menu",
   "menuone",
   "noinsert",
   "noselect",
}
set.clipboard = "unnamedplus"  -- use system clipboard
set.swapfile = false           -- disable swap file
set.autoread = true            -- reload edited files
set.history = 100              -- history size
set.hidden = true              -- hide rather than delete buffers
set.synmaxcol = 240            -- max column for syntax highlighting

-- —————————————————————————————————————————————————————————————————————————————
-- Interface

vim.cmd [[
   syntax enable
   colorscheme desert
]]

set.display = "lastline"
set.number = true           -- absolute line numbers
set.relativenumber = true   -- relative line numbers
set.colorcolumn = "81"      -- column number
set.listchars = {           -- requires <set list>
   eol = '↲',
   tab = '▸ ',
   trail = '·'
}
set.showmatch = true        -- highlight matching parentheses
set.foldmethod = "marker"   -- fold using
set.laststatus = 3          -- status line always & on last window
set.linebreak = true        -- wrap on word boundary

-- —————————————————————————————————————————————————————————————————————————————
-- Navigation

set.mouse = "a"         -- enable mouse support
set.scrolloff = 2       -- vertical scroll visibility
set.sidescrolloff = 5   -- horizontal scroll visibility
set.cursorline = true   -- highlight current line
set.splitright = true   -- enable horizontal split
set.splitbelow = true   -- enable vertical split

-- —————————————————————————————————————————————————————————————————————————————
-- Editing

set.backspace = {"indent", "eol", "start"}  -- backspace in insert mode
set.wildmode = {"longest", "list"}          -- wildcard
set.fileformats = {"unix"}                  -- line endings

-- —————————————————————————————————————————————————————————————————————————————
-- Indentation

set.smarttab = true     -- enable smart tab
set.expandtab = true    -- use spaces on tab
set.autoindent = true   -- indent per previous line
set.tabstop = 3         -- tab width
set.shiftwidth = 3      -- spaces for indent
set.softtabstop = 3     -- soft tab stop width

-- —————————————————————————————————————————————————————————————————————————————
-- Search

set.incsearch = true    -- enable incremental search
set.ignorecase = true   -- enable case insensitive search
set.smartcase = true    -- search using case <if> capitalized input
set.hlsearch = true     -- highlight search results

-- —————————————————————————————————————————————————————————————————————————————
-- Startup

local disabled_built_ins = {
   "netrw",
   "netrwPlugin",
   "netrwSettings",
   "netrwFileHandlers",
   "gzip",
   "zip",
   "zipPlugin",
   "tar",
   "tarPlugin",
   "getscript",
   "getscriptPlugin",
   "vimball",
   "vimballPlugin",
   "2html_plugin",
   "logipat",
   "rrhelper",
   "spellfile_plugin",
   "matchit"
}

for _, plugin in pairs(disabled_built_ins) do
   g["loaded_" .. plugin] = 1
end
