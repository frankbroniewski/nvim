local on_attach = function (_, bufnr)
    local bufopts = { noremap=true, silent=true, buffer=bufnr }

    --vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
    vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, bufopts)
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, bufopts)
    vim.keymap.set("n", "<leader>dl", "<cmd>Telescope diagnostics<cr>", bufopts)
end


return {
    "neovim/nvim-lspconfig",
    dependencies = { "williamboman/mason.nvim", "williamboman/mason-lspconfig" },
    lazy = false,
    config = function()
        local lspconfig = require('lspconfig')

        lspconfig.pyright.setup({
            on_attach = on_attach,
        })

        lspconfig.lua_ls.setup({
            on_attach = on_attach
        })
    end
}
