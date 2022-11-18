return function (use)
    use{
        'preservim/nerdcommenter',
        requires={'JoosepAlviste/nvim-ts-context-commentstring'},
        config=function()
            vim.g.NERDCreateDefaultMappings=0
            vim.g.NERDTrimTrailingWhitespace = 1
            vim.g.NERDCommentEmptyLines = 1
            require'myCustom.keymap.nerdcommenter'
        end
    }
end 
