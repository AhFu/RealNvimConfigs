
local opt = vim.opt
opt.backup = false
opt.backupdir='~/.nvim/filebackup'
opt.writebackup = false;
opt.cursorline = true
opt.expandtab = true
opt.hidden = true
opt.hlsearch = true
opt.incsearch = true
opt.number = true
opt.path:append '**'
opt.scrolloff = 5
opt.shiftwidth = 4
opt.smartcase = true
opt.smartindent = true
opt.ignorecase=true
opt.softtabstop = 4
opt.swapfile = false
opt.tabstop = 4
opt.textwidth = 80
opt.wildmenu = true
opt.wrap = true
--opt.foldmethod='expr'
--opt.foldexpr="nvim_treesitter#foldexpr()"
opt.timeoutlen=1500
vim.o.relativenumber=true
vim.o.number=true
opt.wildcharm=9
opt.foldenable=false
opt.matchpairs:append("<:>")
opt.clipboard="unnamedplus" -- allow accessing Linux system clipboard
vim.g.any_jump_disable_default_keybindings=1
vim.lsp.set_log_level("debug")
