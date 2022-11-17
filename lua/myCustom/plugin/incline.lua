return function(use)
    use{
        'b0o/incline.nvim',
        config=function()
            vim.cmd([[:highlight MyInclineNormal guifg=orange  ]])
            vim.cmd([[:highlight MyInclineNormal2 guifg=green  ]])
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
                    },
                    winhighlight={
                        --     Normal='MyInclineNormal'
                        active={Normal='MyInclineNormal'},
                        inactive={Normal='Normal'}
                    }
                }
            }
            require'incline'.setup(incline_config)
        end,
    }
end
