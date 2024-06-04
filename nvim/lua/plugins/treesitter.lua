return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"bash",
				"c",
				"java",
				"javascript",
				"typescript",
				"json",
				"html",
				"css",
				"markdown",
				"markdown_inline",
				"rust",
				"toml",
				"lua",
				"python",
			},
            highlight = {
                enable = true,
                disable = { "vim" },
                additional_vim_regex_highlighting = false,
            },
        })
    end,
}
