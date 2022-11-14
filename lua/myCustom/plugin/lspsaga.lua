return function (use)
    use{
        "glepnir/lspsaga.nvim",
        branch = "main",
        config=function ()
            local saga = require("lspsaga")
            saga.init_lsp_saga({
                show_outline={
                    
                    auto_refresh=true
                }

            }
            )
            require'myCustom.keymap.lsp.lspsaga'
        end


    }end
