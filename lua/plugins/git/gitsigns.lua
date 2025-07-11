return {
    "lewis6991/gitsigns.nvim",
    Lazy = false,
    enable = true,
    config = function()
        require("gitsigns").setup({
            signs = {
                add = { text = "┃" },
                change = { text = "┃" },
                delete = { text = "_" },
                topdelete = { text = "‾" },
                changedelete = { text = "~" },
                untracked = { text = "┆" },
            },
            signs_staged = {
                add = { text = "┃" },
                change = { text = "┃" },
                delete = { text = "_" },
                topdelete = { text = "‾" },
                changedelete = { text = "~" },
                untracked = { text = "┆" },
            },
            signs_staged_enable = true,
            signcolumn = true, -- Toggle with `:Gitsigns toggle_signs`
            numhl = false, -- Toggle with `:Gitsigns toggle_numhl`
            linehl = false, -- Toggle with `:Gitsigns toggle_linehl`
            word_diff = false, -- Toggle with `:Gitsigns toggle_word_diff`
            watch_gitdir = {
                follow_files = true,
            },
            auto_attach = true,
            attach_to_untracked = false,
            current_line_blame = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
            current_line_blame_opts = {
                virt_text = true,
                virt_text_pos = "eol", -- 'eol' | 'overlay' | 'right_align'
                delay = 1000,
                ignore_whitespace = false,
                virt_text_priority = 100,
                use_focus = true,
            },
            current_line_blame_formatter = "<author>, <author_time:%R> - <summary>",
            sign_priority = 6,
            update_debounce = 100,
            status_formatter = nil, -- Use default
            max_file_length = 40000, -- Disable if file is longer than this (in lines)
            preview_config = {
                -- Options passed to nvim_open_win
                style = "minimal",
                relative = "cursor",
                row = 0,
                col = 1,
            },
            on_attach = function(bufnr)
                vim.keymap.set(
                    "n",
                    "<leader>H",
                    require("gitsigns").preview_hunk,
                    { buffer = bufnr, desc = "Preview git hunk" }
                )

                vim.keymap.set(
                    "n",
                    "]]",
                    require("gitsigns").next_hunk,
                    { buffer = bufnr, desc = "Next git hunk" }
                )

                vim.keymap.set(
                    "n",
                    "[[",
                    require("gitsigns").prev_hunk,
                    { buffer = bufnr, desc = "Previous git hunk" }
                )
            end,
        })
    end,
    keys = {
        {
            "<leader>Gk",
            function()
                require("gitsigns").prev_hunk({ navigation_message = false })
            end,
            desc = "Prev Hunk",
        },
        {
            "<leader>Gl",
            function()
                require("gitsigns").blame_line()
            end,
            desc = "Blame",
        },
        {
            "<leader>Gp",
            function()
                require("gitsigns").preview_hunk()
            end,
            desc = "Preview Hunk",
        },
        {
            "<leader>Gr",
            function()
                require("gitsigns").reset_hunk()
            end,
            desc = "Reset Hunk",
        },
        {
            "<leader>GR",
            function()
                require("gitsigns").reset_buffer()
            end,
            desc = "Reset Buffer",
        },
        {
            "<leader>Gk",
            function()
                require("gitsigns").nav_hunk("prev")
            end,
            desc = "Previous Hunk",
        },
        {
            "<leader>Gj",
            function()
                require("gitsigns").nav_hunk("next")
            end,
            desc = "Next Hunk",
        },
        {
            "<leader>Gs",
            function()
                require("gitsigns").stage_hunk()
            end,
            desc = "Stage Hunk",
        },
        {
            "<leader>Gu",
            function()
                require("gitsigns").stage_hunk()
            end,
            desc = "Undo Stage Hunk",
        },
        -- {
        --   "<leader>Go", require("telescope.builtin").git_status,
        --   desc = "Open changed file"
        -- },
        -- {
        --   "<leader>Gb", require("telescope.builtin").git_branches,
        --   desc = "Checkout branch"
        -- },
        -- {
        --   "<leader>Gc", require("telescope.builtin").git_commits,
        --   desc = "Checkout commit"
        -- },
        -- {
        --   "<leader>GC", require("telescope.builtin").git_bcommits,
        --   desc = "Checkout commit(for current file)"
        -- },
        {
            "<leader>Gd",
            function()
                vim.cmd("Gitsigns diffthis HEAD")
            end,
            desc = "Git Diff HEAD",
        },
    },
}
