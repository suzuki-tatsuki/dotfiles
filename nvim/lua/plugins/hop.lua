return {
    "phaazon/hop.nvim",
    branch = "v2",
    config = function()
        require("hop").setup({ keys = "jwhdnkrtlsypuif.e,oaq;" })

        vim.api.nvim_set_keymap(
            "n",
            "w",
            "<cmd>HopWordCurrentLine<CR>",
            { noremap = true }
        )
        vim.api.nvim_set_keymap(
            "v",
            "w",
            "<cmd>HopWordCurrentLine<CR>",
            { noremap = true }
        )
    end,
}
