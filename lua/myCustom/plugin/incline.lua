return function(use)
        use{
        'b0o/incline.nvim',
        config=function()
            local incline_config={
                debounce_threshold = {
                    falling = 5,
                    rising =5
                },
                window={
                    placement={
                        vertical='top'
                    },
                    margin={
                        vertical={
                            top=0,
                            bottom=0
                        }
                    }

                }
            }
            require'incline'.setup(incline_config)
 



        end,
        
    }
end
