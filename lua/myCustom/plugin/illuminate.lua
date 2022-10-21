return function(use)
        use{
        'RRethy/vim-illuminate',
        setup=function()
        end,
        config=function()
        vim.cmd([[:hi def IlluminatedWordRead gui=underline]])
        vim.cmd([[:hi def IlluminatedWordWrite gui=underline]])
        vim.cmd([[:hi def IlluminatedWordText gui=underline]])
        end
    }
end
