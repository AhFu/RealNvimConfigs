--set cursor appearance
vim.cmd([[:highlight WTF guifg=red guibg=greeen]])
vim.cmd([[:highlight Cursor guifg=red guibg=greeen]])
--vim.opt.guicursor=[[n-v-c-sm:block-DiffDelete-blinkon0,i-ci-ve:ver25-Cursor-blinkwait250-blinkon100-blinkoff700,r-cr-o:hor20]]
vim.opt.guicursor=[[n-v-c-sm:block-WTF,i-ci-ve:ver25-Cursor-blinkwait250-blinkon100-blinkoff700,r-cr-o:hor20]]
-- set onehalf default location to be the first element in runtimepath option.
vim.opt.runtimepath:remove('~/.local/share/nvim/site/pack/packer/start/onehalf/vim')
vim.opt.runtimepath:prepend('~/.local/share/nvim/site/pack/packer/start/onehalf/vim'
)
