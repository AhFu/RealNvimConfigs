return function (use)
    use{
        'mfussenegger/nvim-dap',
        requires={
            {'mfussenegger/nvim-dap-python'},
            {'rcarriga/nvim-dap-ui'},
            {'mxsdev/nvim-dap-vscode-js'},
            {'microsoft/vscode-js-debug'}
        },
        config=function ()
            local dap, dapui = require("dap"), require("dapui")
            require'myCustom.keymap.lsp.dap'
            -- DAP adapters
            require("dap-vscode-js").setup({
                adapters = { 'pwa-node', 'pwa-chrome', 'pwa-msedge', 'node-terminal', 'pwa-extensionHost' }
            })
            dap.adapters.python = {
                type = 'executable',
                command = '/home/hokhk/.local/virtualenvs/debugpy/bin/python',
                args = { '-m', 'debugpy.adapter' }
            }
            dap.adapters.firefox = {
                type = 'executable',
                command = 'node',
                args = {'/home/hokhk/.local/vscode-firefox-debug/dist/adapter.bundle.js'},
            }
            -- DAP UI
            require'dapui'.setup()
            dap.listeners.after.event_initialized["dapui_config"] = function()
                dapui.open()
            end
            dap.listeners.before.event_terminated["dapui_config"] = function()
                dapui.close()
            end
            dap.listeners.before.event_exited["dapui_config"] = function()
                dapui.close()
            end

            --VScode file configurations
            require'dap.ext.vscode'.load_launchjs('/home/hokhk/myprojects/.vscode/launch.json',
                {
                    firefox={'typescript','vue'},
                    kotlin={'kotlin'}
                }
            )
            -- DAP configurations
            for _, language in ipairs({ "typescript", "javascript" }) do
                require("dap").configurations[language] = {
                    {
                        type = "pwa-node",
                        request = "launch",
                        name = "Launch file",
                        program = "${file}",
                        cwd = "${workspaceFolder}",
                    },
                    {
                        type = "pwa-node",
                        request = "attach",
                        name = "Attach",
                        processId = require'dap.utils'.pick_process,
                        cwd = "${workspaceFolder}",
                    }
                }
            end
            dap.configurations.python = {
                {
                    type = 'python'; 
                    request = 'launch';
                    name = "Launch file";
                    program = "${file}"; 
                    pythonPath = function()
                        local cwd = vim.fn.getcwd()
                        if vim.fn.executable(cwd .. '/venv/bin/python') == 1 then
                            return cwd .. '/venv/bin/python'
                        elseif vim.fn.executable(cwd .. '/.venv/bin/python') == 1 then
                            return cwd .. '/.venv/bin/python'
                        else
                            return '/usr/bin/python'
                        end
                    end;
                },
            }
            require'dap-python'.setup('/home/hokhk/.local/virtualenvs/debugpy/bin/python')
        end
    }
end


--dap.adapters.node2 = {
--type = 'executable',
--command = 'node',
--args = {'/home/ubuntu/vscode-node-debug2/out/src/nodeDebug.js'},
--}
--for _, language in ipairs({ "typescript", "javascript" }) do
--for _, language in ipairs({ "javascript" }) do
--dap.configurations[language] = {
--{
--name = 'Launch',
--type = 'node2',
--request = 'launch',
--program = '${file}',
--cwd = vim.fn.getcwd(),
--sourceMaps = true,
--protocol = 'inspector',
--console = 'integratedTerminal',
--outFiles= {'/home/ubuntu/ts/*.js'}
--},
--{
--name = 'Attach to process',
--type = 'node2',
--request = 'attach',
--processId = require'dap.utils'.pick_process,
--},
--}
--end
--            dap.configurations.typescript ={ {
--                name = 'Debug with Firefox',
--                type = 'firefox',
--                request = 'launch',
--                reAttach = true,
--                url = 'http://localhost/index.html',
--                firefoxExecutable = '/home/hokhk/firefox developer edition/firefox'
--            }}
--dap.adapters.kotlin = {
--type = 'executable',
--command ='/home/hokhk/.local/kotlin-debug-adapter/bin/kotlin-debug-adapter',
--				args = { 'projectRoot=/home/hokhk/myprojects/java/demo_kotlin','mainClass=com.example.demo.DemoApplication'}
-- }
--dap.configurations.kotlin={
--{
--type='kotlin',
--request='launch',
--name='Launch file',
--program='${file}',
--projectRoot='/home/hokhk/myprojects/java/demo_kotlin',
--mainClass='com.example.demo.DemoApplicationKt'
--}
--}
