return function (use)
    use{
        'neovim/nvim-lspconfig',
        config=function ()
            --require"myCustom.keymap.lsp.lspconfig-common"
            require'myCustom.autocmds.lsp'

            local on_attach =function(client,bufnr)
                require"myCustom.keymap.lsp.lspconfig-onattach"
                -- Disable virtual text lsp messages.
                vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
                    vim.lsp.diagnostic.on_publish_diagnostics, {
                        virtual_text = false,
                        signs = true,
                        update_in_insert = false,
                    }
                )
                --Display a popup for lsp message when cursor at the token.
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
            local default_capabilities = vim.lsp.protocol.make_client_capabilities()
            --for cmp 
            local cmp_capabilities = require('cmp_nvim_lsp').default_capabilities(default_capabilities)
            -- merge default and cmp capabilities together.
            local merged_capabilities=vim.tbl_deep_extend('force',default_capabilities,cmp_capabilities)
            -- for nvim-ufo
            merged_capabilities.textDocument.foldingRange = {
                dynamicRegistration = false,
                lineFoldingOnly = true
            }
            vim.env.PATH=vim.env.PATH..":/home/ubuntu/.local/bin"
            vim.env.PATH=vim.env.PATH..":/home/ubuntu/.local/lua-language-server/bin"
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
                capabilities=merged_capabilities
            }
            require'lspconfig'.volar.setup{
                filetypes = {'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json','sass'},
                init_options = {
                    typescript = {
                        serverPath = '/usr/local/lib/node_modules/typescript/lib/tsserverlibrary.js'
                    }
                },
                on_attach = on_attach,
                flags = lsp_flags,
                capabilities=merged_capabilities
            }
            local common_langs={"emmet_ls","bashls","jsonls","pyright"}
            for _,lang in pairs(common_langs) do
                require'lspconfig'[lang].setup{
                    on_attach = on_attach,
                    flags = lsp_flags,
                    capabilities=merged_capabilities
                }
            end
            --require'lspconfig'.kotlin_language_server.setup{
                --on_attach = on_attach,
                --flags = lsp_flags,
                --capabilities=merged_capabilities,
                --cmd={'/home/hokhk/.local/kotlin-language-server/bin/kotlin-language-server'}
            --}
            --require'lspconfig'.gradle_ls.setup{
                --filetypes={"kotlin","groovy"},
                --cmd={'/home/hokhk/.local/vscode-gradle-3.12.6/gradle-language-server/build/install/gradle-language-server/bin/gradle-language-server'},
                --root_dir=function()return '/home/hokhk/myprojects/java/demo_kotlin/' end,
                    --on_attach = on_attach,
                    --flags = lsp_flags,
                    --capabilities=merged_capabilities
            --}

        end
    }
end

