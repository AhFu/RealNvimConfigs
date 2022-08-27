return function(use)
    use{
        'mbbill/undotree',
        config=function()
            require'myCustom.keymap.undoTree'
            require'myCustom.autocmds.undoTree'
        end

        
    }
end

