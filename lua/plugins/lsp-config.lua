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
    config = function()
      require("mason-lspconfig").setup(
      { ensure_installed = {"lua_ls", "pylsp"}})
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function ()
      vim.lsp.enable('lua_ls')
      vim.lsp.enable('pylsp')
      vim.lsp.config('lua_ls', {
        settings = {
          ['lus_ls'] = {},
          },
        })
      vim.lsp.config('pylsp', {
        settings = {
          ['python-lsp-server'] = {},
          },
        })
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})
    end
  }
}
