return function (use)
    use{
        'neovim/nvim-lspconfig',
        config=function ()
            --            require"myCustom.keymap.lsp.lspconfig-common"
            local on_attach =require"myCustom.keymap.lsp.lspconfig-onattach"
            local lsp_flags = {
                -- This is the default in Nvim 0.7+
                debounce_text_changes = 150,
            }
            local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
            require('lspconfig')['pyright'].setup{
                --              on_attach = on_attach,
                flags = lsp_flags,
                capabilities=capabilities
            }
            require'lspconfig'.rust_analyzer.setup{
                flags = lsp_flags,
                capabilities=capabilities
            }
        end

    }
end

