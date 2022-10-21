return function(use)
        use{
        'RRethy/vim-illuminate',
        setup=function()
        vim.g.Illuminate_ftblacklist={'NvimTree'}
        end,
        config=function()
        vim.cmd([[:hi def IlluminatedWordRead gui=underline]])
        vim.cmd([[:hi def IlluminatedWordWrite gui=underline]])
        vim.cmd([[:hi def IlluminatedWordText gui=underline]])
        end
    }
end
