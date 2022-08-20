return function()
    local char_key=0 local key=0
    local increment=3
    local ns_id=nil
    local mark_id=nil

    function  ShowVirtualText ()
        local ns_id = vim.api.nvim_create_namespace('demo')
        vim.api.nvim_set_hl(0,"OnFocus",{fg="orange",bg="black",italic=true})
     --   local bnr = vim.fn.bufnr('%')
        local line_num =0
        local col_num =0
        local opts = {
            virt_text = {{"OnFocus", "OnFocus"}},
            virt_text_pos = 'right_align',
            hl_mode='combine',
        }
        local mark_id= vim.api.nvim_buf_set_extmark(0, ns_id, line_num, col_num, opts)
      --  print (ns_id.."insdie function1")
       -- print(mark_id.."inside function2")
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

    function FocusWindow(k)
        vim.b.key=k
        vim.cmd([[:exec "normal!" "\<c-w>" . b:key]])
    end
    function RefreshScreen()
        vim.cmd(":redraw!")
        vim.cmd([[:exec "normal!" "\<c-l>"]])
    end


    repeat
        ns_id,mark_id=   ShowVirtualText()
        RefreshScreen()
        char_key=vim.fn.getchar()
        key=vim.fn.nr2char(char_key)
        if char_key==8 or char_key==10 or char_key==11 or char_key==12 then
            ResizeWindow(char_key)
            RefreshScreen()
        end
        if key=='h' or key=='j' or key=='k' or key=='l' then
            FocusWindow(key)
            vim.cmd([[:sleep 100ms]])
            RemoveVirtualText(ns_id,mark_id)
            ns_id,mark_id=   ShowVirtualText()
            RefreshScreen()
            vim.cmd(":echo @%")
        end
        if key=='m'then
            vim.cmd([[:FocusMaximise]])
            RefreshScreen()
        end
        if key=='e' then
            vim.cmd([[:FocusMaxOrEqual]])
            RefreshScreen()
        end
        if key=='c' then
            vim.cmd([[:call feedkeys("\<esc>:BufferClose\<tab>")]])
            RefreshScreen()
            char_key=120 -- type "x"to exit the program
        end
    until char_key==120 --type "x" to exit the program
    RemoveVirtualText(ns_id,mark_id)
end

