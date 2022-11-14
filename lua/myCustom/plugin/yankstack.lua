return function (use)
    use{
        'maxbrunsfeld/vim-yankstack',
        setup=function ()
            vim.g.yankstack_map_keys=false -- no default key map.
            require('myCustom.keymap.yankstack')
        end,
        requires='tpope/vim-repeat'
    }
end
