return {
  "folke/noice.nvim",
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify"
  },
  config = function()
    require("noice").setup({
      -- Tady můžeš upravit chování, např. které zprávy jdou do bublin atd.
    })
  end
}
