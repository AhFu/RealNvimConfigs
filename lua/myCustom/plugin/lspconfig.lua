return function (use)
    use{
        'neovim/nvim-lspconfig',
        config=function ()
            --            require"myCustom.keymap.lsp.lspconfig-common"
            require'myCustom.autocmds.lsp'

            local on_attach =function(client,bufnr)
                require"myCustom.keymap.lsp.lspconfig-onattach"
                vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
                    vim.lsp.diagnostic.on_publish_diagnostics, {
                        virtual_text = false,
                        signs = true,
                        update_in_insert = false,
                    }
                )
                vim.api.nvim_create_autocmd("CursorHold", {
                    buffer = bufnr,
                    callback = function()
                        vim.o.updatetime = 250 -- reduce the delay in popup display.
                        local opts = {
                            focusable = false,
                            close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
                            border = 'rounded',
                            source = 'always',
                            prefix = ' ',
                            scope = 'cursor',
                        }
                        vim.diagnostic.open_float(nil, opts)
                    end
                })
            end
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
            capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)
            vim.env.PATH=vim.env.PATH..":/home/ubuntu/.local/bin"
            vim.env.PATH=vim.env.PATH..":/home/ubuntu/lua-language-server/bin"
            require'lspconfig'.pyright.setup{
                on_attach = on_attach,
                flags = lsp_flags,
                capabilities=capabilities
            }
            require'lspconfig'.rust_analyzer.setup{
                on_attach = on_attach,
                flags = lsp_flags,
                capabilities=capabilities
            }
            require'lspconfig'.sumneko_lua.setup {
                on_attach = on_attach,
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
                on_attach = on_attach,
                flags = lsp_flags,
                capabilities=capabilities
            }
            require'lspconfig'.jdtls.setup{
                on_attach = on_attach,
                flags = lsp_flags,
                capabilities=capabilities
            }
            --            require'lspconfig'.tsserver.setup{
            --                flags = lsp_flags,
            --                capabilities=capabilities
            --            }
            require'lspconfig'.emmet_ls.setup{
                on_attach = on_attach,
                flags = lsp_flags,
                capabilities=capabilities
            }
            require'lspconfig'.volar.setup{
                on_attach = on_attach,
                filetypes = {'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json','sass'},
                init_options = {
                    typescript = {
                        serverPath = '/usr/local/lib/node_modules/typescript/lib/tsserverlibrary.js'
                    }
                },
                flags = lsp_flags,
                capabilities=capabilities
            }
            require'lspconfig'.bashls.setup{}
        end

    }
end

