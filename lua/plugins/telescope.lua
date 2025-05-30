return
{
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            local builtin = require("telescope.builtin");
            -- Keybindings
            vim.keymap.set('n', '<C-p>', builtin.find_files, {}) -- ctrl + p
            vim.keymap.set('n', '<C-f>', builtin.live_grep, {})  -- ctrl + f
        end
    },
    {
        'nvim-telescope/telescope-ui-select.nvim',
        config = function()
            require("telescope").setup {
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown {
                            -- even more opts
                        }
                    }
                }
            }
        require("telescope").load_extension("ui-select")
        end
    }
}
