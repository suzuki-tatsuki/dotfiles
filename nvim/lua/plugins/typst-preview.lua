return{
	"chomosuke/typst-preview.nvim",
	cmd = { "TypstPreview", "TypstPreviewStop", "TypstPreviewToggle" },
	version = '0.1.*',
	build = function() require 'typst-preview'.update() end,

	ft = { 'typst' },

	--config = function()
        --local opts = { noremap = true, silent = true }
        --local keymap = vim.api.nvim_set_keymap

        --keymap("n", "<C-t>", "<Plug>TypstPreview", opts)
        --keymap("n", "<C-w>", "<Plug>TypstPreviewStop", opts)
        --keymap("n", "<C-r>", "<Plug>TypstPreviewToggle", opts)

	--end,
}
