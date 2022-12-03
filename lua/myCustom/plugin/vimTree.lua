return function(use)

    --nvim tree
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons', -- optional, for file icons
        },
        tag = 'nightly', -- optional, updated every week. (see issue #1193)
        config=function ()

            require"myCustom.keymap.nvimTree"
            require("nvim-tree").setup(
                {
                    open_on_setup = true,
                    view={
                        side='right'
                    },
                    actions={
                        expand_all={
                            exclude={'.git','node_modules','build'},
                            max_folder_discovery = 300,
                        }
                    },
                    trash={
                        cmd="trash",
                        require_confirm=true,
                    }
                })
            --require("nvim-tree").setup()
            -- for barbar tab offset
            local nvim_tree_events = require('nvim-tree.events')
            local bufferline_state = require('bufferline.state')

            --            nvim_tree_events.on_tree_open(function ()
            --                bufferline_state.set_offset(31, "File Tree")
            --            end)
            --
            --            nvim_tree_events.on_tree_close(function ()
            --                bufferline_state.set_offset(0)
            --            end)
        end
    }

end
