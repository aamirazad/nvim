require('mason.settings').set({
  ui = {
    border = 'rounded'
  }
})

local lsp = require('lsp-zero')

lsp.preset('recommended')
lsp.ensure_installed({
    'eslint',
    'clangd',
    'yamlls',
})

lsp.setup()

require("coq_3p") {
    { src = "copilot", short_name = "COP", accept_key = "<c-f>" },
}


vim.diagnostic.config({
    virtual_text = true,
    signs = true,
    update_in_insert = false,
    underline = true,
    severity_sort = false,
    float = true,
})

lsp.nvim_workspace()
