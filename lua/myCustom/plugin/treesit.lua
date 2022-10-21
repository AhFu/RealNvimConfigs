return function (use)
    use {
        'nvim-treesitter/nvim-treesitter',
        requires={'nvim-treesitter/nvim-treesitter-context', "p00f/nvim-ts-rainbow"},
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
                incremental_selection = {
                    enable = true,
                    keymaps = {
                        init_selection = "gnn",
                        node_incremental = "grn",
                        scope_incremental = "grc",
                        node_decremental = "grm",
                    },
                },
                indent = {
                    enable = true
                },
                rainbow = {
                    enable = true,
                    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
                    max_file_lines = nil, -- Do not enable for files with more than n lines, int
                }
            }
        end
    }
end
