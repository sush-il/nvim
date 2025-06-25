require("lspconfig").eslint.setup({
  on_attach = function(client, bufnr)
    vim.api.nvim_create_autocmd("BufWritePre", {
      buffer = bufnr,
      command = "EslintFixAll",  -- optional
    })
  end,
})

vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
})
