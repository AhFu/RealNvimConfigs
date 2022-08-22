vim.api.nvim_create_autocmd(
    {"FileType"},
    {
        pattern="python",
        callback=function()
            vim.keymap.set({'n','i','c'}, '<F7>',function()
                vim.cmd([[:!python3.8 %]])
            end
            )
        end                                                                                                                                           
    }
)

