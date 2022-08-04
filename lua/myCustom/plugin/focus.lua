return function (use)
    use { "beauwilliams/focus.nvim",
    config = function()
        require("focus").setup({
            winhighlight = true,
            cursorline = false
        })
    end
}
end
