
vim.keymap.set({'n','i','c'}, '<c-w>',function() require'myCustom.script.window'() end)
vim.keymap.set({'n','i','c'}, '<leader>w',function() require'myCustom.script.window'() end)
