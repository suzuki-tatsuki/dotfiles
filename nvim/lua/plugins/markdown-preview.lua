-- マークダウンプレビュー
return{
    "iamcco/markdown-preview.nvim",
	cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end,

	--init = function() 
	--end,

    config = function()
        local opts = { noremap = true, silent = true }
        local keymap = vim.api.nvim_set_keymap

        keymap("n", "<C-s>", "<Plug>MarkdownPreview", opts)
        keymap("n", "<C-q>", "<Plug>MarkdownPreviewStop", opts)
        keymap("n", "<C-p>", "<Plug>MarkdownPreviewToggle", opts)

		--vim.g.mkdp_browser = '/Applications/Google\\ Chrome.app/Contents/MacOS/Google\\ Chrome'
		vim.cmd([[
			function OpenMarkdownPreview (url)
				let cmd = "/Applications/Google\\ Chrome.app/Contents/MacOS/Google\\ Chrome --new-window --incognito --app=" . shellescape(a:url) . " &"
				silent call system(cmd)
			endfunction
		]])
		vim.g.mkdp_browserfunc = "OpenMarkdownPreview"
    end,

}
