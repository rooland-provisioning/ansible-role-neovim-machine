return {
  {
    'echasnovski/mini.comment',
    version = '*',
    config = function()
      require("mini.comment").setup({
        mappings = {
          -- Toggle comment (like `gcip` - comment inner paragraph) for both
          -- Normal and Visual modes
          comment = '<D-/>',

          -- Toggle comment on current line
          comment_line = '<D-/>',

          -- Toggle comment on visual selection
          comment_visual = '<D-/>',
        },
      })
    end
  },
}
