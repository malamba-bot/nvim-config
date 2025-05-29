return
{
    {
        "mason-org/mason.nvim",
        opts = {},
        config = function()
            require("mason").setup()
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            -- Setup LSPs here
            lspconfig.lua_ls.setup({})
            lspconfig.clangd.setup({}) -- C++
            -- Keybinds
            vim.keymap.set('n', 'H', vim.lsp.buf.hover, {}) -- H : hover
            vim.keymap.set('n', 'gt', vim.lsp.buf.definition, {}) -- gt : goto
            vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {}) -- * *ca : code actions
        end
    }
}
