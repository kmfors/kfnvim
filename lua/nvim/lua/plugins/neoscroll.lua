return {
------------------------------------- 滚轮平滑插件 ------------------------------------
    "karb94/neoscroll.nvim",
    event = "VeryLazy",
    config = function ()
        require('neoscroll').setup {}
        require('neoscroll').setup({

            pre_hook = function()
                vim.opt.eventignore:append({
                    'WinScrolled',
                    'CursorMoved',
                })
            end,
            post_hook = function()
                vim.opt.eventignore:remove({
                    'WinScrolled',
                    'CursorMoved',
                })
            end,
        })

    end
}
