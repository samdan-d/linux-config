local o = vim.o
local k = vim.keymap

o.termguicolors = true
o.relativenumber = true
o.smartindent = false
o.scrolloff = 10

vim.schedule(function()
  vim.o.clipboard = ''
end)

k.set('v', 'J', ":m '>+1<CR>gv=gv")
k.set('v', 'K', ":m '<-2<CR>gv=gv")

k.set('n', 'J', 'mzJ`z')
k.set('n', '<C-d>', '<C-d>zz')
k.set('n', '<C-u>', '<C-u>zz')
k.set('n', 'n', 'nzzzv')
k.set('n', 'N', 'Nzzzv')

k.set('x', '<leader>p', [["_dP]])

k.set({ 'n', 'v' }, '<leader>y', [["+y"]])
k.set({ 'n', 'v' }, '<leader>p', [["+p"]])
k.set({ 'n' }, '<leader>Y', [["+Y"]])
k.set({ 'n', 'v' }, '<leader>d', '"_d')
