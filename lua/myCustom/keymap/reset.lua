vim.g.mapleader = ';;'
-- Toggling Normal, Command, Visual mode
vim.keymap.set({'n','i','v','c','t'}, '<C-;>', '<nop>' )
vim.keymap.set({'n','i','v','c','t'}, '<C-c>', '<nop>' )
vim.keymap.set({'n','i','v','c','t'}, '<C-v>', '<nop>' )
vim.keymap.set({'i','n','v','c','t'}, '<leader>n', '<esc>' )
vim.keymap.set({'i','n','v','c','t'}, '<leader>c', '<esc>:')
vim.keymap.set({'i','n','v','c','t'}, '<leader>v', '<esc>v' )
vim.keymap.set({'i','n','v','c','t'}, '<C-n>', '<esc>' )
--vim.keymap.set({'n','v','c','t'}, '<C-n>', '<esc>i' )
vim.keymap.set({'i','n','v','c','t'}, '<C-c>', '<esc>:' )
vim.keymap.set({'i','n','v','c','t'}, '<C-v>', '<esc>v' )
vim.keymap.set({'v'},'q', '<esc><c-q>' )
vim.keymap.set({'v'},'v', '<esc><s-v>' )
vim.keymap.set({'v'},'i', '<esc>i' )


--misc resets
vim.keymap.set({'n'}, '<C-u>', '<esc>u' )
vim.keymap.set({'n'}, '<cr>', 'i<cr><esc>' )
vim.keymap.set({'n'}, '<C-o>', '<nop>' )
vim.keymap.set({'i'}, '<C-o>', '<esc>o' )
vim.keymap.set({'i'}, '<m-o>', '<esc>O' )



--netvigation
vim.keymap.set({'i','n'}, '<C-h>', '<left>' )
vim.keymap.set({'i','n'}, '<C-j>', '<down>' )
vim.keymap.set({'i','n'}, '<C-k>', '<up>' )
vim.keymap.set({'i','n'}, '<C-l>', '<right>' )
vim.keymap.set({'i','n'}, '<m-h>', '<esc>g;' ) -- previous cursor position 
vim.keymap.set({'i','n'}, '<m-l>', '<esc>g,' ) -- next cursoir position
vim.keymap.set({'i','n'}, '<c-a>', '<home>' )  
vim.keymap.set({'i','n'}, '<c-s>', '<end>' ) 
-- copy, paste,redo and delete 
vim.keymap.set({'i'}, '<C-u>', '<esc>ui') --undo in edit mode
vim.keymap.set({'i'}, '<C-p>', '<esc>pi' ) -- paste in edit mode
vim.keymap.set({'i'}, '<m-p>', '<esc>Pi' ) -- paste in edit mode
vim.keymap.set({'i'}, '<C-r>', '<esc><C-r>i' )   --redo in edit mode
vim.keymap.set({'i'}, '<C-d>', '<del>')-- del in edit mode
vim.keymap.set({'i'}, '<C-e>', '<bs>' ) -- backspace in edit mode
vim.keymap.set({'n'}, 'r', '<nop>' ) -- disable "repalce" operation in favour of  redo
vim.keymap.set({'n'}, 'r', '<C-r>' ) -- enable redo with r instead of ctrl + r

--code helper Autoclosing
--vim.keymap.set({'i'}, '"', '""<left>')
--vim.keymap.set({'i'}, '\'', '\'\'<left>')
--vim.keymap.set({'i'}, '(', '()<left>')
--vim.keymap.set({'i'}, '[', '[]<left>')
--vim.keymap.set({'i'}, '{', '{<cr>}<esc><S-o>')
--vim.keymap.set({'i'}, '{<cr>', '{<cr>}<esc>o')

--refresh screen
vim.keymap.set({'i','n','c'}, '<F5>', '<esc><C-l><esc>:noh<cr><esc>:NvimTreeRefresh<cr>')




-- save, quit and quit with save
--vim.keymap.set({'i','n','v','c','t'}, '<leader>w', '<esc>:w<cr>' )
vim.keymap.set({'i','n','v','c','t';}, '<leader>q', '<esc>:BufferClose<tab>' )-- require opt.wildcharm=9 to work



--disalbe recording
vim.keymap.set({'n'}, 'q', '<nop>' )

--exit terminal
vim.keymap.set({'t'},'<esc>','<C-\\><C-n>')
