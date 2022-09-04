
            vim.keymap.set("n", "gh", "<cmd>Lspsaga lsp_finder<CR>", { silent = true,noremap = true})
            vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", { silent = true })
            vim.keymap.set("n", "gr", "<cmd>Lspsaga rename<CR>", { silent = true,noremap = true })
--            local action = require("lspsaga.action")
--            vim.keymap.set("n", "<C-f>", function()
--                action.smart_scroll_with_saga(1)
--            end, { silent = true })
--            vim.keymap.set("n", "<C-b>", function()
--                action.smart_scroll_with_saga(-1)
--            end, { silent = true })
            vim.keymap.set("n", "gs", "<Cmd>Lspsaga signature_help<CR>", { silent = true,noremap = true }
            )
            vim.keymap.set("n", "gd", "<cmd>Lspsaga preview_definition<CR>", { silent = true })
