return {
    "danymat/neogen",
    dependencies = { 
        "nvim-treesitter/nvim-treesitter",
        "L3MON4D3/LuaSnip",
    },
    config = function()
        local opts = { noremap = true, silent = true }
        vim.api.nvim_set_keymap("n", "<Leader>nf", ":lua require('neogen').generate()<CR>", opts)

        require("neogen").setup({
            enabled = true,
            snippet_engine = "luasnip",
            languages = {
                python = {
                    template = {
                        annotation_convention = "google_docstrings"
                    }
                },
            }
        })
    end
}
