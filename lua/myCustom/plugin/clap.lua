return function(use)
    use{
        'liuchengxu/vim-clap',
        config=function()
            require'myCustom.keymap.clap'
            vim.g.clap_layout={ relative='editor' }
        end
}
end
