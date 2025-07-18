return {
    {
        "joshuadanpeterson/typewriter",
        dependencies = {
            "nvim-treesitter/nvim-treesitter",
        },
        opts = {},
        config = function()
            require("typewriter").setup({
                enable_with_zen_mode = true,
                enable_with_true_zen = true,
                keep_cursor_position = true,
                enable_notifications = true,
                enable_horizontal_scroll = true,
                start_enabled = false,
                always_center = true,
                always_center_filetypes = {},
            })
        end,
    },
}
