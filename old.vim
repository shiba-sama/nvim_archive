" ——————————————————————————————————————————————————————————————————————————————
" Global

set smartcase
set showmatch
set ignorecase
set hlsearch
set incsearch
set tabstop=3
set softtabstop=3
set expandtab
set shiftwidth=3
set autoindent
set autoread
set wildmode=longest,list
set cc=80
filetype plugin indent on
set mouse=a
set cursorline
set smarttab
set backspace=indent,eol,start
set scrolloff=2      " scroll vertical visibility
set sidescrolloff=5  " scroll horizontal visibility
set history=1000
set display+=lastline

" ——————————————————————————————————————————————————————————————————————————————
" Hotkeys

" insert mode shift-tab
inoremap <S-Tab> <C-d>

let mapleader = ","
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

colorscheme tender

" ——————————————————————————————————————————————————————————————————————————————
" Autocommands

" ref: https://jeffkreeftmeijer.com/vim-number/
" Change line number mode when switching between panes
augroup numbertoggle
   autocmd!
   autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
   autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
augroup END

" ——————————————————————————————————————————————————————————————————————————————
" Imports

lua require("neo.plugins")
