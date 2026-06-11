return {
  "stevearc/conform.nvim",
  config = function()
    require("conform").setup {
      formatters_by_ft = {
        lua = { "stylua" },
        javascript = { "prettier" },
        typescript = { "prettier" },
        javascriptreact = { "prettier" },
        typescriptreact = { "prettier" },
        json = { "prettier" },
        html = { "prettier" },
        css = { "prettier" },
        astro = { "prettier" },
        python = {
          "autopep8",
          lsp_format = "fallback",
        },
      },
      formatters = {},
    }
  end,
}
