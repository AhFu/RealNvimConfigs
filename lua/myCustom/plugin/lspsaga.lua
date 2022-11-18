return function (use)
    use{
        "glepnir/lspsaga.nvim",
        branch = "main",
        config=function ()
            local saga = require("lspsaga")
            saga.init_lsp_saga({
                show_outline={
                    auto_refresh=true
                },
                finder_request_timeout = 2500,
                finder_action_keys = {
                    open = {'<C-c>o', '<CR>'},
                    -- vsplit = '',
                    vsplit={'<C-v>'},
                    --  split = 'i',
                    split ={'<C-x>'},
                    tabe = '<C-c>t',
                    quit = {'<C-c>q', '<ESC>'},
                },
                code_action_keys = {
                    quit = 'q',
                    exec = '<CR>',
                },
                definition_action_keys = {
                    edit = '<C-c>o',
                    vsplit = '<C-c>v',
                    split = '<C-c>i',
                    tabe = '<C-c>t',
                    quit = '<C-c>q',
                },
                rename_action_quit = '<C-c>',
            }
            )
            require'myCustom.keymap.lsp.lspsaga'
        end


    }end
