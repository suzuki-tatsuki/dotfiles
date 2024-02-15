return{
	"chomosuke/typst-preview.nvim",
	--cmd = { "TypstPreview", "TypstPreviewStop", "TypstPreviewToggle" },
	--lazy = false,
	version = '0.1.*',
	build = function() require 'typst-preview'.update() end,

	ft = { 'typst' },

	config = function()
		print("typst")
        local opts = { noremap = true, silent = true }
        local keymap = vim.api.nvim_set_keymap

        keymap("n", "<C-t>", "<CMD>TypstPreview<CR>", opts)
        --keymap("n", "<C-w>", "<CMD>TypstPreviewStop<CR>", opts)
        --keymap("n", "<C-r>", "<CMD>TypstPreviewToggle<CR>", opts)

	end,
}
