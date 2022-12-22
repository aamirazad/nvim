require('mason.settings').set({
  ui = {
    border = 'rounded'
  }
})

local lsp = require('lsp-zero')

lsp.preset('recommended')
lsp.ensure_installed({
    'eslint',
    'sumneko_lua',
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

require'lspconfig'.sumneko_lua.setup {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim', 'use' }
            }
        }
    }
}

