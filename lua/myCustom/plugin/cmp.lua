return function (use)
    use {
        'hrsh7th/nvim-cmp',

        requires={
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-cmdline',
            "hrsh7th/cmp-nvim-lua",
            'hrsh7th/cmp-vsnip',
            'hrsh7th/vim-vsnip',
            'hrsh7th/vim-vsnip-integ'
        },
        config=function ()
            vim.opt.completeopt={
                "menu",
                "menuone",
                "noselect"
            }
            local cmp = require'cmp'
            cmp.setup({
                sources = cmp.config.sources({
                    { name = 'vsnip' },
                    { name = 'nvim_lua' },
                    { name = 'nvim_lsp' },
                    { name = 'path' },
                    { name = 'buffer' },
                }),
                mapping=require'myCustom.keymap.lsp.cmp',
                snippet = {
                    expand = function(args)
                        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
                    end,
                },

            })
            cmp.setup.cmdline(':', {
                mapping = cmp.mapping.preset.cmdline(),
                sources = cmp.config.sources({
                    { name = 'path' }
                }, {
                    { name = 'cmdline' }
                })
            })
        end
    }

end
