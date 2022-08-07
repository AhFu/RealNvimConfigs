

return function (use)
    use{
        'mfussenegger/nvim-dap',
        requires={
            'mfussenegger/nvim-dap-python',
            'rcarriga/nvim-dap-ui'
        },
        config=function ()
            require'dap-python'.setup('~/.virtualenvs/debugpy/bin/python')
            require'dapui'.setup()
            require'myCustom.keymap.lsp.dap'
            local dap, dapui = require("dap"), require("dapui")
            dap.listeners.after.event_initialized["dapui_config"] = function()
                dapui.open()
            end
            dap.listeners.before.event_terminated["dapui_config"] = function()
                dapui.close()
            end
            dap.listeners.before.event_exited["dapui_config"] = function()
                dapui.close()
            end
        end
    }
end
