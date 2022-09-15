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
    if value:match("\"%w")or value:match("'%w")or value:match("`%w")then
        local s1=value:sub(0,1) -- " or ' or ` 
        local s2=value:sub(2,-1) -- function name
        local s3="f" -- surround plug param
        local s4="<cr>"
        value=s1..s3..s2..s4
        print (value)
        action=vim.api.nvim_replace_termcodes("<esc>ysa"..value,true,false,true)
    end


    vim.api.nvim_feedkeys(action,"m",false)
end
