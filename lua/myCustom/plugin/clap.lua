return function(use)
  use{
        'liuchengxu/vim-clap',
        config=function()
            require'myCustom.keymap.clap'
      --      vim.cmd[[:Clap install-binary]]
        end


    }
end
