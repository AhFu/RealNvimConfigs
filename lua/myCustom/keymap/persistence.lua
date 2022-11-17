vim.g.mapleader = ';;'
vim.keymap.set({'n'}, '<leader>ls', '<cmd>lua require"persistence".load({ last = true })<cr>' )
