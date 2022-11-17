vim.g.mapleader = ';;'
vim.keymap.set({'i','n','c','v'}, '<leader>cf', '<esc>:Clap live_grep<cr>' )
vim.keymap.set({'i','n','c','v'}, '<leader>cF', '<esc>:Clap live_grep ++opt=--hidden<cr>' )
vim.keymap.set({'i','n','c','v'}, '<leader>cj', '<esc>:Clap dumb_jump<cr>' )
vim.keymap.set({'i','n','c','v'}, '<leader>cj', '<esc>:Clap yanks<cr>' )
