local vim = vim
local opt = vim.opt
local wo = vim.wo

-- Window Options
wo.relativenumber = true

-- Tab options
opt.smarttab = true
opt.breakindent = true
opt.shiftwidth = 2
opt.tabstop = 2

-- Folding options
opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"

-- [[ Setting options ]]
-- See `:help vim.o`
-- NOTE: You can change these options as you wish!

-- Set highlight on search
opt.hlsearch = false

-- Make line numbers default
vim.wo.number = true

-- Enable mouse mode
opt.mouse = 'a'

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
opt.clipboard = 'unnamedplus'

-- Enable break indent
opt.breakindent = true

-- Save undo history
opt.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
opt.ignorecase = true
opt.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'

-- Decrease update time
opt.updatetime = 250
opt.timeoutlen = 300

-- Set completeopt to have a better completion experience
opt.completeopt = 'menuone,noselect'

-- NOTE: You should make sure your terminal supports this
opt.termguicolors = true
