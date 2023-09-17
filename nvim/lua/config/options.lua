-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt
opt.winbar = "%=%m %f"
opt.termguicolors = true
opt.hlsearch = false
opt.incsearch = true
opt.clipboard = "unnamed"
opt.list = false
-- Set completeopt to have a better completion experience
vim.o.completeopt = "menuone,noselect"

-- Keep signcolumn on by default
vim.wo.signcolumn = "yes"

-- NOTE: You should make sure your terminal supports this
vim.o.termguicolors = true
