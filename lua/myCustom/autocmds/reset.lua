vim.api.nvim_create_autocmd(
    {"BufEnter"},
    {
        pattern="*",
        callback=function()
            vim.opt.laststatus=3
        vim.g.Illuminate_ftblacklist={'NvimTree'}
        end
    }
)

vim.api.nvim_create_autocmd(
    {"BufEnter"},
    {
        pattern={"/*node_modules*"},
        callback=function()
            -- causing some problems in LspSaga
--            vim.cmd([[:view]])
--            vim.cmd([[:g/^\s*\/\*/foldclose]])
        end
    }
)    
