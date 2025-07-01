return {
    "nvim-neo-tree/neo-tree.nvim",
    enable = true,
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
        -- {"3rd/image.nvim", opts = {}}, -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    follow_current_file = {
        enable = true,
    },
    config = function()
        require("neo-tree").setup({
            enable_git_status = true,
            enable_diagnostics = true,
            default_component_configs = {
                indent = {
                    indent_size = 2,
                    padding = 1, -- extra padding on left hand side

                    -- indent guides
                    with_markers = true,
                    indent_marker = "│",
                    last_indent_marker = "└",
                    highlight = "NeoTreeIndentMarker",

                    -- expander config, needed for nesting files
                    with_expanders = true,
                    expander_collapsed = "",
                    expander_expanded = "",
                    expander_highlight = "NeoTreeExpander",
                },
                icons = {
                    folder_closed = "",
                    folder_open = "",
                    folder_empty = "󰜌",
                    default = "*",
                    highlight = "NeoTreeFileIcon",
                },
                modified = {
                    symbol = "",
                    highlight = "NeoTreeModified",
                },
                diagnostics = {
                    symbols = {
                        hint = "󰌵",
                        info = "",
                        warn = "",
                        error = "",
                    },
                    highlights = {
                        hint = "DiagnosticSignHint",
                        info = "DiagnosticSignInfo",
                        warn = "DiagnosticSignWarn",
                        error = "DiagnosticSignError",
                    },
                },
                git_status = {
                    symbols = {
                        -- Change type
                        added = "✚",
                        deleted = "✖",
                        modified = "",
                        renamed = "󰁕",

                        -- Status type
                        untracked = "",
                        ignored = "",
                        unstaged = "󰄱",
                        staged = "",
                        conflict = "",
                    },
                },
            },
            filesystem = {
                hijack_netrw_behavior = "open_current",
            },
        })
        -- Keymap
        vim.keymap.set("n", "<C-n>", function()
            local reveal_file = vim.fn.expand("%:p")
            if reveal_file == "" then
                reveal_file = vim.fn.getcwd()
            else
                local f = io.open(reveal_file, "r")
                if f then
                    f.close(f)
                else
                    reveal_file = vim.fn.getcwd()
                end
            end
            require("neo-tree.command").execute({
                action = "focus", -- OPTIONAL, this is the default value
                source = "filesystem", -- OPTIONAL, this is the default value
                position = "left", -- OPTIONAL, this is the default value
                reveal_file = reveal_file, -- path to file or folder to reveal
                reveal_force_cwd = true, -- change cwd without asking if needed
            })
        end, { desc = "Open neo-tree at current file or working directory" })

        vim.keymap.set(
            "n",
            "<C-n>",
            ":Neotree focus filesystem reveal left<CR>",
            { desc = "open neotree" }
        )

        vim.keymap.set("n", "<leader>N", ":Neotree close<CR>", { desc = "close neotree" })
    end,
}
