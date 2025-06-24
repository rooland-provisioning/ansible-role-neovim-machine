return {
  "catppuccin/nvim", 
  name = "catppuccin", 
  config = function()
    require("catppuccin").setup({})
    vim.cmd("colorscheme catppuccin")
  end,

  priority = 1000,
  lazy = false

  -- "folke/tokyonight.nvim",
  -- --opts = {},
  -- config = function()
  --   vim.cmd("colorscheme tokyonight-storm")
  -- end
}
