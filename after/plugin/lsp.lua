local lsp_zero = require('lsp-zero')

require('mason').setup({})
local lspconfig = require("lspconfig") lspconfig["ts_ls"].setup({})
require('mason-lspconfig').setup({
  handlers = {
    lsp_zero.default_setup,
  }
})


vim.diagnostic.config({
    virtual_text = true,
    signs = true,
    update_in_insert = false,
    underline = true,
    severity_sort = false,
    float = true,
})
