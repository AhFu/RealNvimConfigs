return function (use)
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        config=function ()
            require'nvim-treesitter.configs'.setup {
                ensure_installed={
                    'c',
                    'lua',
                    'cpp',
                    'java',
                    'python',
                    'rust',
                    'sql',
                    'yaml',
                    'vue',
                    'json',
                    'kotlin',
                    'css',
                    'html',
                    'bash',
                    'cmake',
                    'dockerfile',
                    'scss',
                    'javascript',
                    'typescript'
                },
                sync_install = true,
                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = false
                },
            }
        end
    }
end
