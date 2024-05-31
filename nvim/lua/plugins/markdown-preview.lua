-- マークダウンプレビュー
return{
    "iamcco/markdown-preview.nvim",
	cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end,

    config = function()
        local opts = { noremap = true, silent = true }
        local keymap = vim.api.nvim_set_keymap

        keymap("n", "<C-s>", "<Plug>MarkdownPreview", opts)
        keymap("n", "<C-q>", "<Plug>MarkdownPreviewStop", opts)
        keymap("n", "<C-p>", "<Plug>MarkdownPreviewToggle", opts)

    end,

}
