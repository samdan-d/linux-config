return {
  'm4xshen/hardtime.nvim',
  lazy = false,
  dependencies = {
    'MunifTanjim/nui.nvim',
    {
      'rcarriga/nvim-notify',
      config = function()
        require('notify').setup {
          render = 'minimal',
          stages = 'slide',
          on_open = function(win)
            vim.api.nvim_win_set_config(win, { focusable = false })
          end,
        }
        vim.notify = require 'notify'
      end,
    },
  },
  opts = {},
}
