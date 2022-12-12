return function (use)
	use{
		'mfussenegger/nvim-dap',
		requires={
			{'mfussenegger/nvim-dap-python'},
			{'rcarriga/nvim-dap-ui'}
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
			dap.adapters.node2 = {
				type = 'executable',
				command = 'node',
				args = {'/home/ubuntu/vscode-node-debug2/out/src/nodeDebug.js'},
			}
			--for _, language in ipairs({ "typescript", "javascript" }) do
			for _, language in ipairs({ "javascript" }) do
				dap.configurations[language] = {
					{
						name = 'Launch',
						type = 'node2',
						request = 'launch',
						program = '${file}',
						cwd = vim.fn.getcwd(),
						sourceMaps = true,
						protocol = 'inspector',
						console = 'integratedTerminal',
						outFiles= {'/home/ubuntu/ts/*.js'}
					},
					{
						name = 'Attach to process',
						type = 'node2',
						request = 'attach',
						processId = require'dap.utils'.pick_process,
					},
				}
			end
			dap.adapters.firefox = {
				type = 'executable',
				command = 'node',
				args = {'/home/hokhk/vscode-firefox-debug/dist/adapter.bundle.js'},
			}
			--            dap.configurations.typescript ={ {
			--                name = 'Debug with Firefox',
			--                type = 'firefox',
			--                request = 'launch',
			--                reAttach = true,
			--                url = 'http://localhost/index.html',
			--                firefoxExecutable = '/home/hokhk/firefox developer edition/firefox'
			--            }}
			require'dap.ext.vscode'.load_launchjs('/home/hokhk/ts/vite-project/.vscode/launch.json',{firefox={'typescript','vue'}})
			dap.adapters.kotlin = {
				type = 'executable',
				command ='/home/hokhk/.local/kotlin-debug-adapter/bin/kotlin-debug-adapter',
--				args = { 'projectRoot=/home/hokhk/myprojects/java/demo_kotlin','mainClass=com.example.demo.DemoApplication'}
			}
			dap.configurations.kotlin={
                {
				type='kotlin',
				request='launch',
				name='Launch file',
				program='${file}',
				projectRoot='/home/hokhk/myprojects/java/demo_kotlin',
                mainClass='com.example.demo.DemoApplicationKt'
                }
			}

		end
	}
end
