-- CursorHoldが発火するまでの時間
vim.opt.updatetime = 200
vim.api.nvim_create_autocmd("CursorHold", {
    callback = function()
        if not require("cmp").visible() then
            vim.diagnostic.open_float(0, { scope = "cursor", focus = false })
        end
    end,
})


vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
	pattern = {"*.typ"},
	callback = function()
		local buf = vim.api.nvim_get_current_buf()
		vim.api.nvim_buf_set_option(buf, "filetype", "typst")
	end,
})
