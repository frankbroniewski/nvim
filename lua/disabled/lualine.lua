return {
    'nvim-lualine/lualine.nvim',
    --dependencies = { 'nvim-tree/nvim-web-devicons' },
    lazy = false,
    config = function()
        require("lualine").setup {
            options = {
                theme = "tokyonight",
                globalstatus = true,
            },
            sections = {
                lualine_a = { "buffers" }
            }
        }
    end
}
