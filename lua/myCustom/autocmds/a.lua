vim.api.nvim_create_autocmd(
    {"BufEnter"},
    {
        pattern="*",
        callback=function()
            vim.opt.laststatus=3

        end
    }
)

vim.api.nvim_create_autocmd(
    {"BufEnter"},
    {
        pattern="/*node_modules*",
        callback=function()
            vim.cmd([[:view]])
print("wtf- autocmd")
        end
    }
)    
