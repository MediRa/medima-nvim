return {
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.8",
        dependencies = { "nvim-lua/plenary.nvim" },

        config = function()
            local builtin = require("telescope.builtin")

            -- Telescope keymaps
            vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
            vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
            vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
            vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
        end,

        -- require("telescope").load_extension("dbout"),
        -- require("telescope").setup({
        --     extensions = {
        --         dbout = {
        --             keymaps = {
        --                 open_connection = "<cr>",
        --                 new_connection = "n",
        --                 delete_connection = "d",
        --                 edit_connection = "e",
        --                 attach_connection = "a",
        --             },
        --         },
        --     },
        -- }),
    },
    {
        "nvim-telescope/telescope-ui-select.nvim",

        config = function()
            require("telescope").setup({
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_ivy(),
                    },
                },
            })
            require("telescope").load_extension("ui-select")
        end,
    },
}
