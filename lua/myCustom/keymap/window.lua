
--vim.keymap.set({'n','i','c'}, '<c-w>',function() require'myCustom.script.window'() end)
vim.keymap.set({'n','i','c'}, '<a-h>',"<esc><c-w>h" )
vim.keymap.set({'n','i','c'}, '<a-j>',"<esc><c-w>j")
vim.keymap.set({'n','i','c'}, '<a-k>',"<esc><c-w>k")
vim.keymap.set({'n','i','c'}, '<a-l>',"<esc><c-w>l")
----------------------------------------------
vim.keymap.set({'n','i','c'}, '<s-a-h>',"<cmd>:lefta vsplit % <cr>" )
vim.keymap.set({'n','i','c'}, '<s-a-j>',"<cmd>:lefta split %  <cr>")
vim.keymap.set({'n','i','c'}, '<s-a-k>',"<cmd>:belowright split % <cr>")
vim.keymap.set({'n','i','c'}, '<s-a-l>',"<cmd>:belowright vsplit % <cr>")
----------------------------------------------
vim.keymap.set({'n','i','c'}, '<leader>w',function() require'myCustom.script.window'() end)
