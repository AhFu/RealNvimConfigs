return function()
    local value=vim.fn.input("Input a value")

    local action=""
    if value=="\"" or value== "'" or value=="`"then
        action=vim.api.nvim_replace_termcodes("<esc>ds"..value,true,false,true)
    end

    if value=="\"\"" or value== "\"'" or value=="\"`" or
        value=="'\"" or value== "''" or value=="'`" or
        value=="`\"" or value== "`'" or value=="``" then
        action=vim.api.nvim_replace_termcodes("<esc>cs"..value,true,false,true)
    end
    if value:match("%w")or value:match("%w")or value:match("%w")then
        local position=vim.api.nvim_win_get_cursor(0)
        local column=position[2]+1
        print ("column:"..column)
        local s1=vim.api.nvim_get_current_line():sub(column,column)
        local s2="f" -- surround plug param
        local s3=value  
        local s4="<cr>"
        value=s1..s2..s3..s4
        print (value)
        action=vim.api.nvim_replace_termcodes("<esc>ysa"..value,true,false,true)
    end
    vim.api.nvim_feedkeys(action,"m",false)
end
