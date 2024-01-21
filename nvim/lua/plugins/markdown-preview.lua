-- マークダウンプレビュー
return{
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && yarn install",
    init = function()
        vim.g.mkdp_filetypes = { "markdown" }
    end,

    ft = { "markdown" },

    config = function()
        local opts = { noremap = true, silent = true }
        local keymap = vim.api.nvim_set_keymap
		global mkdp_markdown_css = "~/.config/nvim/lua/plugins/md.css"

        keymap("n", "<C-s>", "<Plug>MarkdownPreview", opts)
        keymap("n", "<C-q>", "<Plug>MarkdownPreviewStop", opts)
        keymap("n", "<C-p>", "<Plug>MarkdownPreviewToggle", opts)

    end,

}
