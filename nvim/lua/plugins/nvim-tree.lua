return {
  'nvim-tree/nvim-tree.lua',
  lazy = false,
  version = '*',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  keys = {
    { "<leader>e", ":NvimTreeToggle<CR>", desc = "Toggle tree", {silent = true} },
  },
  config = function()
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
    local tree = require("nvim-tree")

    local function my_on_attach(bufnr)
      local api = require('nvim-tree.api')
      local function opts(desc)
        return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
      end
      -- default mappings
      api.config.mappings.default_on_attach(bufnr)
      local function edit_or_open()
        local node = api.tree.get_node_under_cursor()

        if node.nodes ~= nil then
          api.node.open.edit()
        else
          api.node.open.edit()
          api.tree.close()
        end
      end

      local function vsplit_preview()
        local node = api.tree.get_node_under_cursor()

        if node.nodes ~= nil then
          api.node.open.edit()
        else
          api.node.open.vertical()
        end
      end

      -- on_attach
      vim.keymap.set("n", "l", edit_or_open,          opts("Edit Or Open"))
      vim.keymap.set("n", "L", vsplit_preview,        opts("Vsplit Preview"))
      vim.keymap.set("n", "h", api.tree.close,        opts("Close"))
      vim.keymap.set("n", "H", api.tree.collapse_all, opts("Collapse All"))
    end

    tree.setup({
      on_attach = my_on_attach,
      git = {
        enabled = false
      }
    })
  end
}
