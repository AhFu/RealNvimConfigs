return function()
    local char_key=0 local key=0
    local increment=3
    local ns_id=nil
    local mark_id=nil

    function  ShowVirtualText ()
        local ns_id = vim.api.nvim_create_namespace('demo')
        vim.api.nvim_set_hl(0,"OnFocus",{fg="orange",bg="black",italic=true})
        --   local bnr = vim.fn.bufnr('%')
        local line_num =vim.fn.line('w0',vim.fn.win_getid())-1
        local col_num =0
        local opts = {
            virt_text = {{"OnFocus", "OnFocus"}},
            virt_text_pos = 'right_align',
            hl_mode='combine',
            sign_text="*",
            priority=1,
            sign_hl_group='OnFocus',
            cursorline_hl_group='OnFocus'
        }
        local mark_id= vim.api.nvim_buf_set_extmark(0, ns_id, line_num, col_num, opts)
        return ns_id, mark_id
    end
    function RemoveVirtualText(nsID,markID)
        if ns_id~=nil and mark_id~=nil then
            vim.api.nvim_buf_del_extmark(0,nsID,markID)
        end
    end

    function ResizeWindow(k)
        vim.b.increment=increment
        if k==10 then
            vim.cmd([[:exe "resize" "-" . b:increment]])
        end
        if k==11 then
            vim.cmd([[:exe "resize" "+" . b:increment]])
        end
        if k==12 then
            vim.cmd([[:exe "vertical" "resize" "+" . b:increment]])
        end
        if k==8 then
            vim.cmd([[:exe "vertical" "resize" "-" . b:increment]])
        end
    end

    function ChangeFocus(k)
        vim.b.key=k
        vim.cmd([[:exec "normal!" "\<c-w>" . b:key]])
    end
    function RefreshScreen()
        vim.cmd(":redraw!")
        vim.cmd([[:exec "normal!" "\<c-l>"]])
    end
    function SplitWindow(k)
        if vim.opt.filetype:get()=='NvimTree' then
            print("Split for NvimTree menu is not allowed.")
            return
        end

        if k=="H" then
            vim.cmd([[:FocusSplitLeft]])
        end
        if k=="J" then
            vim.cmd([[:FocusSplitDown]])
        end
        if k=="K" then
            vim.cmd([[:FocusSplitUp]])
        end
        if k=="L" then
            vim.cmd([[:FocusSplitRight]])
        end
    end
    ns_id,mark_id=ShowVirtualText()
    RefreshScreen()

    repeat
        char_key=vim.fn.getchar()
        key=vim.fn.nr2char(char_key)
        if char_key==8 or char_key==10 or char_key==11 or char_key==12 then
            ResizeWindow(char_key)
            RefreshScreen()
            require'incline.manager'.update{refresh=true}
            vim.cmd([[:sleep 10ms]])
            RefreshScreen()
        end
        if key=='h' or key=='j' or key=='k' or key=='l' then
            RemoveVirtualText(ns_id,mark_id)
            ChangeFocus(key)
        --    vim.cmd([[:sleep 100ms]])
            ns_id,mark_id=   ShowVirtualText()
            RefreshScreen()
            vim.cmd(":echo @%")
        end
        if key=='H' or key=='J' or key=='K' or key=='L' then
            RemoveVirtualText(ns_id,mark_id)
            SplitWindow(key)
            vim.cmd([[:sleep 100ms]])
            ns_id,mark_id=   ShowVirtualText()
            RefreshScreen()
            vim.cmd(":echo @%")
        end
        if key=='m' or key =='e' then
            if key=='m' then
            vim.cmd([[:FocusMaximise]])
            else
            vim.cmd([[:FocusMaxOrEqual]])
            end
            RefreshScreen()
        end
      --  if key=='e' then
      --      vim.cmd([[:FocusMaxOrEqual]])
      --      RefreshScreen()
      --  end
        --if key=='b' then
            --local result=""
            --while result=="" do
            --RemoveVirtualText(ns_id,mark_id)
                --result= vim.api.nvim_exec([[:BufferPick]],true)
                --ns_id,mark_id=   ShowVirtualText()
                --RefreshScreen()
            --end
            --char_key=120
        --end
        if key=='b' then
            RemoveVirtualText(ns_id,mark_id)
            vim.cmd([[:call feedkeys("\<esc>:BufferClose")]])
          --  vim.cmd([[:call feedkeys("\<esc>:BufferClose\<tab>")]])
            char_key=120  -- must exit the program or key-input buffer will be consumed to getchar() function
            RefreshScreen()
        end
        if key=='c' or key =='q' then
            RemoveVirtualText(ns_id,mark_id)
            if key=='c' then
            vim.cmd([[:close]])
            char_key=120
            else --key must be "C"
            vim.cmd([[:qall!]])
            end
            RefreshScreen()
        end
     --   if key=='C' then
     --       RemoveVirtualText(ns_id,mark_id)
     --       vim.cmd([[:qall]])
     --       RefreshScreen()
     --   end
    until char_key==120 --type "x" to exit the program
    RemoveVirtualText(ns_id,mark_id)
end
