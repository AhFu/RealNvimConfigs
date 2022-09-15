
vim.g.mapleader = ';;'
vim.keymap.set({'n','i'}, '<leader>s',function() require'myCustom.script.surround'() end)
