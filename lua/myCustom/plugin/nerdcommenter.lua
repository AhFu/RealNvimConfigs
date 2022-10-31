return function (use)
    use{
        'preservim/nerdcommenter',
        requires={'JoosepAlviste/nvim-ts-context-commentstring'},
        config=function()
            vim.g.NERDCreateDefaultMappings=1
        end
    }
end 
