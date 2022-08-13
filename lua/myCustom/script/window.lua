local char_key=0 local key=0
local increment=3
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
    vim.cmd([[:exec "normal" "\<c-w>" . b:key]])
end
function RefreshScreen()

    vim.cmd(":redraw!")
    vim.cmd([[:exec "normal!" "\<c-l>"]])
end
repeat
    char_key=vim.fn.getchar()
    key=vim.fn.nr2char(char_key)
    if char_key==8 or char_key==10 or char_key==11 or char_key==12 then
        ResizeWindow(char_key)
        RefreshScreen()
    end
    if key=='h' or key=='j' or key=='k' or key=='l' then
        FocusWindow(key)
        vim.cmd([[:sleep 100ms]])
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
        vim.cmd([[:close]])
        RefreshScreen()
        char_key=13 -- to exit the program
    end
until char_key==13
vim.cmd([[:exec "normal!" "\<c-l>"]])
--vim.o.filetype
