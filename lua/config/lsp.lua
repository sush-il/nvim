local lspconfig = require('lspconfig')
local blink_cmp = require('blink.cmp')

local on_attach = function(client, bufnr)
    -- Enable completion capabilities, including resolution for auto-imports.
    client.server_capabilities.completionProvider = client.server_capabilities.completionProvider or {}
    client.server_capabilities.completionProvider.resolveProvider = true
end

-- Capabilities for LSP: blink.cmp provides its own function to get LSP capabilities.
local capabilities = blink_cmp.get_lsp_capabilities()

lspconfig.gopls.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    settings = {
        gopls = {
            completeUnimported = true,
            analyses = {
                unusedparams = true,
                nilness = true,
            },
            staticcheck = true,
        },
    },
})
