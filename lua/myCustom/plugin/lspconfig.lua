return function (use)
    use{
        'neovim/nvim-lspconfig',
        config=function ()
            --            require"myCustom.keymap.lsp.lspconfig-common"
            require'myCustom.autocmds.lsp'
            local on_attach =require"myCustom.keymap.lsp.lspconfig-onattach"
            local lsp_flags = {
                -- This is the default in Nvim 0.7+
                debounce_text_changes = 150,
            }
            local capabilities = vim.lsp.protocol.make_client_capabilities()
            -- for nvim-ufo
            capabilities.textDocument.foldingRange = {
                dynamicRegistration = false,
                lineFoldingOnly = true
            }
            capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)
            vim.env.PATH=vim.env.PATH..":/home/ubuntu/.local/bin"
            vim.env.PATH=vim.env.PATH..":/home/ubuntu/lua-language-server/bin"
            require'lspconfig'.pyright.setup{
                --              on_attach = on_attach,
                flags = lsp_flags,
                capabilities=capabilities
            }
            require'lspconfig'.rust_analyzer.setup{
                flags = lsp_flags,
                capabilities=capabilities
            }
            require'lspconfig'.sumneko_lua.setup {
                settings = {
                    Lua = {
                        runtime = {
                            -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                            version = 'LuaJIT',
                        },
                        diagnostics = {
                            -- Get the language server to recognize the `vim` global
                            globals = {'vim'},
                        },
                        workspace = {
                            -- Make the server aware of Neovim runtime files
                            library = vim.api.nvim_get_runtime_file("", true),
                        },
                        -- Do not send telemetry data containing a randomized but unique identifier
                        telemetry = {
                            enable = false,
                        },
                    },
                },
                flags = lsp_flags,
                capabilities=capabilities
            }
            require'lspconfig'.kotlin_language_server.setup{
                flags = lsp_flags,
                capabilities=capabilities
            }
            require'lspconfig'.jdtls.setup{
                flags = lsp_flags,
                capabilities=capabilities
            }
            --            require'lspconfig'.tsserver.setup{
            --                flags = lsp_flags,
            --                capabilities=capabilities
            --            }
            require'lspconfig'.emmet_ls.setup{
                flags = lsp_flags,
                capabilities=capabilities
            }
            require'lspconfig'.volar.setup{
                filetypes = {'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json'},
                init_options = {
                    typescript = {
                        serverPath = '/usr/local/lib/node_modules/typescript/lib/tsserverlibrary.js'
                    }
                },
                flags = lsp_flags,
                capabilities=capabilities
            }
        end

    }
end

