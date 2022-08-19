require"myCustom.options"
require"myCustom.keymap.reset"
require'plugins'
require'myCustom.keymap.window'
--require'myCustom.appearance'

--vim.api.nvim_create_autocmd(
--{"FileType"},
--{
--    pattern = {"python","*.py"},
--command =":echo 'wtf'"
--
--}
--    )
vim.api.nvim_create_autocmd({
    "FileType"                                                                                                                                                           
},
{
    pattern="python",                                                                                                                                                                 
    callback=function() print("wtf2046")end                                                                                                                                           
}                                                                                                                                                                                 
)

