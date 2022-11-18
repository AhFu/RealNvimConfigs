vim.g.mapleader = ';;'
vim.keymap.set({'i','n','c','v'}, '<leader>co', "<esc>:call nerdcommenter#Comment('v','Invert')<cr>" )
