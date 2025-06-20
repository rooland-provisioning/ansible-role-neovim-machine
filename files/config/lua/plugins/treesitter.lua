return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    "nvim-treesitter/nvim-treesitter-context"
  },
  build = ":TSUpdate",
  opts = {
    ensure_installed = {
      -- Run `:TSInstall ruby` to install ruby
      "ruby",
      "lua", "vim", "bash",
    },
    highlight = {
      enable = true,
    },
    indent = {
      enable = true,
    },
  },
  config = function()
    require("treesitter-context").setup({
      enable = true,           
      max_lines = 3,           
      multiline_threshold = 20,
      trim_scope = 'outer',    
      mode = 'topline',        
      separator = '-',         
      zindex = 20,             
    })
  end
}
