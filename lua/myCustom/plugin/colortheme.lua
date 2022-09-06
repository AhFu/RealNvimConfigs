return function(use)
    --  use{
        --      'sonph/onehalf',
        --      rtp='vim',
        --      config=vim.cmd([[:colorscheme onehalfdark]])
        --  }
        use{  'tyrannicaltoucan/vim-deep-space',
        config=function()
            vim.cmd([[set background=dark]])
            vim.cmd([[set termguicolors]])
            vim.cmd([[:colorscheme deep-space]])
            vim.cmd([[let g:deepspace_italics=1]])
            vim.cmd([[:highlight Cursor guifg=red guibg=greeen]])
            vim.cmd([[:highlight MatchParen  guifg=#56adb7 guibg=#51617d ]])
            --vim.cmd([[:highlight Comment   guifg=#544923]])
            --vim.cmd([[:highlight Folded   guifg=#]])
            vim.cmd([[:highlight Comment   guifg=#733417]])
            vim.cmd([[:highlight Folded   guifg=#733417]])
            vim.cmd([[:highlight LineNr   guifg=#51617d ]]) 
            vim.cmd([[:highlight TSVariable   guifg=#9aa7bd ]]) -- gray5 for varaibles
        end
    }

end
--Color Theme
    --use 'tjdevries/colorbuddy.nvim'
    --use 'bkegley/gloombuddy'
