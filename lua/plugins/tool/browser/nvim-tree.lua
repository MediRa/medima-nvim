return {
    "nvim-tree/nvim-tree.lua",
    enable = true,
    config = function()
        require("nvim-tree").setup({
            sort = {
                sorter = "case_sensitive",
            },
            view = {
                adaptive_size = true,
                width = 100,
                centralize_selection = true,
                side = "right",
            },
            renderer = {
                icons = {
                    show = {
                        file = true,
                        folder = true,
                        folder_arrow = true,
                        git = true,
                        modified = true,
                        hidden = false,
                        diagnostics = true,
                        bookmarks = true,
                    },
                    glyphs = { -- Customize the characters used for icons
                        default = "",
                        symlink = "",
                        git = {
                            unstaged = "✗",
                            staged = "✓",
                            unmerged = "",
                            renamed = "➜",
                            untracked = "★",
                            deleted = "",
                            ignored = "◌",
                        },
                        folder = {
                            default = "",
                            open = "",
                            empty = "",
                            empty_open = "",
                            symlink = "",
                            symlink_open = "",
                        },
                    },
                },
            },
        })
    end,
}
