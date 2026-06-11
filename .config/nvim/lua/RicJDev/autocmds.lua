vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = "*.gabo",
  callback = function(args)
    vim.bo[args.buf].filetype = "gabo"
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "gabo",
  callback = function(args)
    local bufnr = args.buf
    vim.bo[bufnr].shiftwidth = 2
    vim.bo[bufnr].tabstop = 2
    vim.bo[bufnr].softtabstop = 2
    vim.bo[bufnr].expandtab = true
    vim.bo[bufnr].commentstring = "// %s"
    vim.cmd "set syntax=gabo"
  end,
})
