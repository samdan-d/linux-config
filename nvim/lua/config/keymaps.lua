-- https://medium.com/linux-with-michael/must-have-neovim-keymaps-51c283394070
function Map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.keymap.set(mode, lhs, rhs, options)
end

-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set(
  "n",
  "<leader>sx",
  require("telescope.builtin").resume,
  { noremap = true, silent = true, desc = "Resume" }
)

vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>p", '"+p')
vim.keymap.set("v", "<leader>p", '"+p')

Map("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>", { desc = "Tmux Window Left" })
Map("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>", { desc = "Tmux Window Right" })
Map("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>", { desc = "Tmux Window Down" })
Map("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>", { desc = "Tmux Window Up" })
