return {
    -- Single tabpage interface for easily cycling through diffs for all modified files for any git rev.

    "sindrets/diffview.nvim",
    events = "VeryLazy",
    cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewToggleFiles", "DiffviewFocusFiles" },

    vim.keymap.set("n", "<leader>Do", ":DiffviewOpen", { desc = "Opening a diff view " }),
    vim.keymap.set("n", "<leader>Dc", ":DiffviewClose", { desc = "Closing a diff view " }),
    vim.keymap.set("n", "<leader>Dt", ":DiffviewToggleFiles", {}),
    vim.keymap.set("n", "<leader>Df", "DiffviewFocusFiles", {}),
    vim.keymap.set(
        "n",
        "<leader>Dh",
        ":DiffviewFileHistory",
        { desc = "Opens a new file history view that lists all commits " }
    ),
}
