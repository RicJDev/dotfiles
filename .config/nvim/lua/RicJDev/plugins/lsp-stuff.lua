return {
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    priority = 200,
  },
  {
    "mason-org/mason.nvim",
    opts = {},
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "lua_ls", "gopls", "clangd", "rust_analyzer",
        "ts_ls", "basedpyright", "jsonls", "html", "cssls",
        "emmet_ls", "astro",
      },
      automatic_installation = true,
    },
  },
}
