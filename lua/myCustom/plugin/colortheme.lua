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
        end
    }

end

--Color Theme
    --use 'tjdevries/colorbuddy.nvim'
    --use 'bkegley/gloombuddy'
