return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    keys = {
        {
            "<leader>?",
            function()
                require("which-key").show({ global = false })
            end,
            desc = "Buffer Local Keymaps (which-key)",
        },
    },
    opts = {},
    config = function()
        local wk = require("which-key")
        wk.add({
            ---FIX: need fix of the comment here

            ---Tab handling
            {
                mode = "n",
                { "<leader>to", ":tabnew<cr>", group = "tab", desc = "Open new tab" },
                { "<leader>tc", ":tabclose<cr>", group = "tab", desc = "Close new tab" },
                { "<leader>tn", ":tabnext<cr>", group = "tab", desc = "Move to next tab" },
                { "<leader>tp", ":tabprevious<cr>", group = "tab", desc = "Move to previous tab" },
            },

            ---Save and quit
            {
                mode = { "n", "v" },
                group = "save and quit",
                { "<leader>w", "<cmd>w<cr>", desc = "Write" },
                { "<leader>wa", "<cmd>wall<cr>", desc = "Write all" },
                { "<leader>q", "<cmd>q<cr>", desc = "Quit" },
                { "<leader>qa", "<cmd>qall<cr>", desc = "Quit all" },
                { "<leader>wqa", "<cmd>wqall<cr>", desc = "Quit all" },
            },

            ---window handling
            {
                mode = { "n" },
                group = "window",
                { "<leader>sh", "<C-w>h", desc = "split current window horizontally" },
                { "<leader>sv", "<C-w>v", desc = "split current window vertically" },
                { "<leader>q", "<C-w>q", desc = "close current window" },
            },

            -- { "<leader>f", group = "file" }, -- group
            -- { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find File", mode = "n" },
            -- {
            --     "<leader>fb",
            --     function()
            --         print("hello")
            --     end,
            --     desc = "Foobar",
            -- },
            -- { "<leader>fn", desc = "New File" },
            -- { "<leader>f1", hidden = true }, -- hide this keymap
            -- { "<leader>w", proxy = "<c-w>", group = "windows" }, -- proxy to window mappings
            -- {
            --     "<leader>b",
            --     group = "buffers",
            --     expand = function()
            --         return require("which-key.extras").expand.buf()
            --     end,
            -- },

            ---NOTE: Added new keymap
            { "<Leader>L", ":Lazy<cr>", desc = "Lazy" },
            {},
        })
    end,
}
