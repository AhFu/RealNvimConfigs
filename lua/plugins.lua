vim.cmd [[packadd packer.nvim]]

return require('packer').startup(
    function(use)
        use 'wbthomason/packer.nvim'
        use'junegunn/fzf.vim'
        require'myCustom.plugin.lspconfig'(use) -- Configurations for Nvim LSP
        require'myCustom.plugin.barbar'(use)
        require'myCustom.plugin.vimTree'(use)
        require'myCustom.plugin.lualine'(use)
        require'myCustom.plugin.treesit'(use)
        require'myCustom.plugin.colortheme'(use)
        require'myCustom.plugin.telescope'(use)
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
        require'myCustom.plugin.hop'(use)
        require'myCustom.plugin.hlslens'(use)
        --   require'myCustom.plugin.wordmotion'(use)
        require'myCustom.plugin.illuminate'(use)
        use 'udalov/kotlin-vim'
        use'mfussenegger/nvim-jdtls'
        use'pechorin/any-jump.vim'
        use'jose-elias-alvarez/null-ls.nvim'
        require'myCustom.plugin.nvim-ufo'(use)
        require("null-ls").setup({
            sources = {
                --              require'null-ls'.builtins.formatting.stylelint,
                --              require'null-ls'.builtins.diagnostics.stylelint
                --                require("null-ls").builtins.formatting.stylua,
                --              require("null-ls").builtins.diagnostics.eslint,
                --            require("null-ls").builtins.diagnostics.luacheck,
                --          require("null-ls").builtins.completion.spell,
            },
        })
        require'myCustom.plugin.clap'(use)
        use 'liuchengxu/vista.vim'
        use "b0o/incline.nvim"
        require('incline').setup()
        require'myCustom.plugin.nerdcommenter'(use)
        require'myCustom.plugin.persistence'(use)
    end
)





--vim.diagnostic.config({signs = false})
--https://neovim.io/doc/user/diagnostic.html#diagnostic-api
--https://www.reddit.com/r/neovim/comments/silikv/debugging_in_neovim/
--https://stackoverflow.com/questions/18948491/running-python-code-in-vim
