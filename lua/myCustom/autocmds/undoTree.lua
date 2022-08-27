
vim.api.nvim_create_autocmd(
    {"FileType"},
    {
        pattern="undotree",
        callback=function(t)
            vim.keymap.set({'n','i','c'}, 'x',function()
                vim.fn.feedkeys(vim.api.nvim_replace_termcodes(":UndotreeHide<cr>",true,false,true))
            end,
                {buffer=0}
            )
        end,
    }

)
