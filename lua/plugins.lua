vim.cmd [[packadd packer.nvim]]

return require('packer').startup(
function()
    use 'wbthomason/packer.nvim'
    use'junegunn/fzf.vim'

    require'myCustom.plugin.lspconfig'(use) -- Configurations for Nvim LSP
    require'myCustom.plugin.barbar'(use)
    require'myCustom.plugin.vimTree'(use)
    require'myCustom.plugin.lualine'(use)
    require'myCustom.plugin.treesit'(use)
    require'myCustom.plugin.colortheme'(use)
    require'myCustom.plugin.telescope'(use)
    require'myCustom.plugin.cursorline'(use)
    require'myCustom.plugin.indentblinkline'(use)
    require'myCustom.plugin.lspsaga'(use)
    require'myCustom.plugin.cmp'(use)
    require'myCustom.plugin.surround'(use)
    require'myCustom.plugin.trouble'(use)
    require'myCustom.plugin.focus'(use)
    require'myCustom.plugin.yankstack'(use)
    require'myCustom.plugin.dap'(use)
    require'myCustom.plugin.undoTree'(use)
    require'myCustom.plugin.autosave'(use)
    require'myCustom.plugin.vimFugitive'(use)
    vim.keymap.set({'n'}, '<c-w>',function() require'myCustom.script.window'() end)
end
)





--vim.diagnostic.config({signs = false})
--https://neovim.io/doc/user/diagnostic.html#diagnostic-api
--https://www.reddit.com/r/neovim/comments/silikv/debugging_in_neovim/
--https://stackoverflow.com/questions/18948491/running-python-code-in-vim
