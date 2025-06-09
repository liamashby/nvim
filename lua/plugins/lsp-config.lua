return {
  {
    "mason-org/mason.nvim",
    opts = {},
    config = function()
      require("mason").setup() 
    end
  },
  {
    "mason-org/mason-lspconfig.nvim",
    opt = {},
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    }
  },
  {
    "neovim/nvim-lspconfig",
    config = function ()
      vim.lsp.enable('lua_ls')
      vim.lsp.config('lua_ls', {
        settings = {
          ['lus_ls'] = {},
          },
        })
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
    end
  }
}
