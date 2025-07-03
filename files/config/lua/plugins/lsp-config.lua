return {
  {
    "williamboman/mason.nvim",
    config = function()
      require ("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require ("mason-lspconfig").setup({
        ensure_installed = { "rubocop", "steep" }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")

      require("config.diagnostics")

      -- Rubocop
      lspconfig.rubocop.setup({})

      vim.opt.signcolumn = "yes"
      -- Original "LightBlue" for DiagnosticInfo wasn't readable for me
      vim.api.nvim_set_hl(0, 'DiagnosticInfo', { fg = 'DarkGrey' })
      vim.api.nvim_create_autocmd("FileType", {
        pattern = "ruby",
        callback = function()
          local rubocop_cmd = vim.fn.system('which rubocop'):gsub('%s+', '')

          vim.lsp.start {
            name = "rubocop",
            cmd = { rubocop_cmd, '--lsp' },
          }
        end,
      })
      vim.api.nvim_create_autocmd("BufWritePre", {
        pattern = "*.rb",
        callback = function()
          vim.lsp.buf.format()
        end,
      })

      -- Steep
      lspconfig.steep.setup({})

      vim.keymap.set('n', '<leader>J', vim.lsp.buf.hover, {})
      vim.keymap.set({ 'n' }, '<leader>ca', vim.lsp.buf.code_action, {})
    end
  }
}
