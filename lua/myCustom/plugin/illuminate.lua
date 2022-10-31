return function(use)
        use{
        'RRethy/vim-illuminate',
        setup=function()
        end,
        config=function()
        vim.g.Illuminate_ftblacklist={'NvimTree'}
        vim.cmd([[:hi def IlluminatedWordRead gui=underline]])
        vim.cmd([[:hi def IlluminatedWordWrite gui=underline]])
        vim.cmd([[:hi def IlluminatedWordText gui=underline]])
        end
    }
end
