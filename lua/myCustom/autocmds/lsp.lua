vim.api.nvim_create_autocmd(
    {"FileType"},
    {
        pattern="python",
        callback=function()
            vim.keymap.set({'n','i','c'}, '<F7>',function()
                --  vim.cmd([[:!python3.8 %]])
                vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<esc>:!python3.8 %<cr>",true,false,true))
                --  vim.api.nvim_exec(":!python3.8 %",false)
            end,
                {buffer=true}
            )
        end                                                                                             }
)

