return function (use)
    use{
        'maxbrunsfeld/vim-yankstack',
        config=function ()
            vim.g.yankstack_map_keys='custom_bind_in_yankstack.lua'
            require('myCustom.keymap.yankstack')
        end
    }
end
