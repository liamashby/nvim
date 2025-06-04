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
    opts = {
        ensure_installed = { "lua_ls" },
    },
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    },
    config = function()
      require("mason-lspconfig").setup()
    end
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
    end
  }
}
