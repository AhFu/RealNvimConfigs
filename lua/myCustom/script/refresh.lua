return function()

    local buf_basepath=vim.fn.expand("%:p:h")
    local buf_fullpath=vim.fn.expand("%:p")
    local restore_win_id= vim.api.nvim_get_current_win()
    local commands={
        ':TSBufToggle rainbow',
        ':noh',
        ':NvimTreeClose',
        ':TSBufToggle rainbow',
        ':NvimTreeFindFileToggle '..buf_basepath,
        '<c-l>'
    }
    for _,value in pairs(commands) do
        value=value..'<cr>'
        local action=vim.api.nvim_replace_termcodes(value,true,false,true)
        vim.fn.execute(":normal "..action)
        vim.cmd([[:sleep 100m]])
    end
    vim.api.nvim_set_current_win(restore_win_id)
    vim._system("echo "..buf_fullpath.."|xclip -sel clip")
end


