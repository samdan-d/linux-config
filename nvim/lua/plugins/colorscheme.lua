return {
  -- Kanagawa Theme
  "rebelot/kanagawa.nvim",
  priority = 1000,
  config = function()
    require('kanagawa').setup({
      undercurl = true,
      dimInactive = true,
      overrides = function(colors) 
        local theme = colors.theme
        return {
        }
      end
    })
    vim.cmd("colorscheme kanagawa")
  end,
}
