            vim.keymap.set({"i","n"}, "<F9>", "<cmd>:lua require'dap'.continue()<cr>", { silent = true,noremap = true})
            vim.keymap.set({"i","n"}, "<F10>", "<cmd>:lua require'dap'.step_over()<cr>", { silent = true,noremap = true})
            vim.keymap.set({"i","n"}, "<F11>", "<cmd>:lua require'dap'.step_into()<cr>", { silent = true,noremap = true})
            vim.keymap.set({"i","n"}, "<F12>", "<cmd>:lua require'dap'.step_out()<cr>", { silent = true,noremap = true})
            vim.keymap.set({"i","n"}, "<F8>", "<cmd>:lua require'dap'.toggle_breakpoint()<cr>", { silent = true,noremap = true})
