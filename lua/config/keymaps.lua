-- local keymap = require("utils").map
local keymap = require("config.utils").map
---------------
---- Remap ----
---------------
keymap("i", "jk", "<Esc>", { desc = "Remap exit key 'Esc' to 'jk'" })

keymap("n", "n", "nzzzv", { desc = "Make search result always on the center of the window" })
keymap("n", "n", "Nzzzv", { desc = "Make search result always on the center of the window" })

keymap("n", "<leader>ss", function()
    vim.cmd.wall()
    vim.cmd.source()
end, { desc = "Save and source neovim" })

keymap("n", "n", ":keepjumps normal! n<cr>")
keymap("n", "N", ":keepjumps normal! N<cr>")

-- keymap('n', "<leader>ss", ":wall <leader>z :source<CR>", {})
--- C/P to  System clipboard
-- keymap("v","y",'"*y',{})
-- keymap("v","p",'"*p',{})
-- keymap("v","y",'"+y',{})
-- keymap("v","p",'"+p',{})

-----------------------------
---- Move between window ----
-----------------------------
---- Terminal Mode
keymap("t", "Mh", "<C-\\><C-n><C-w>h")
keymap("t", "Ml", "<C-\\><C-n><C-w>l")
keymap("t", "Mj", "<C-\\><C-n><C-w>j")
keymap("t", "Mk", "<C-\\><C-n><C-w>k")
--- Normal Mode
keymap("n", "Mh", "<C-w>h")
keymap("n", "Ml", "<C-w>l")
keymap("n", "Mj", "<C-w>j")
keymap("n", "Mk", "<C-w>k")
keymap("n", "<Esc>Mh", "<C-w>h")
keymap("n", "<Esc>Ml", "<C-w>l")
keymap("n", "<Esc>Mj", "<C-w>j")
keymap("n", "<Esc>Mk", "<C-w>k")
--- Insert Mode
keymap("i", "Mh", "<Esc><C-w>h")
keymap("i", "Ml", "<Esc><C-w>l")
keymap("i", "Mj", "<Esc><C-w>j")
keymap("i", "Mk", "<Esc><C-w>k")
--- Visual Mode
keymap("v", "Mh", "<Esc><C-w>h")
keymap("v", "Ml", "<Esc><C-w>l")
keymap("v", "Mj", "<Esc><C-w>j")
keymap("v", "Mk", "<Esc><C-w>k")

----------------------------
--- Get rid of Highlight ---
keymap("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

--------------------------
---Todo comment keymaps---
--------------------------
keymap(
    "n",
    "<leader>tdt",
    ":TodoTelescope<CR>",
    { desc = "Search through all project todos with Telescope" }
)
keymap(
    "n",
    "<leader>tdl",
    ":TodoTelescope<CR>",
    { desc = "This uses the location list to show all todos in your project." }
)

------------------------------
-- -- Global options for folding
-- vim.opt.foldmethod = "expr"
-- vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()" -- Requires nvim-treesitter
-- vim.opt.foldenable = true
-- vim.opt.foldlevelstart = 99 -- Open all folds on startup
--
-- -- Custom fold keymaps
-- vim.keymap.set("n", "<Leader>f", "zi", { desc = "Toggle Folding" })
-- vim.keymap.set("n", "za", "za", { desc = "Toggle current fold" })
-- vim.keymap.set("n", "zc", "zc", { desc = "Close current fold" })
-- vim.keymap.set("n", "zo", "zo", { desc = "Open current fold" })
-- vim.keymap.set("n", "zC", "zC", { desc = "Recursively close current fold" })
-- vim.keymap.set("n", "zO", "zO", { desc = "Recursively open current fold" })
-- vim.keymap.set("n", "zm", "zm", { desc = "Decrease foldlevel (close more)" })
-- vim.keymap.set("n", "zr", "zr", { desc = "Increase foldlevel (open more)" })
-- vim.keymap.set("n", "zM", "zM", { desc = "Close all folds" })
-- vim.keymap.set("n", "zR", "zR", { desc = "Open all folds" })
-- vim.keymap.set("n", "zi", "zi", { desc = "Toggle foldenable" })
--
-- -- Navigation between folds
-- vim.keymap.set("n", "[z", "[z", { desc = "Previous fold start" })
-- vim.keymap.set("n", "]z", "]z", { desc = "Next fold start" })
-- vim.keymap.set("n", "zj", "zj", { desc = "Next fold" })
-- vim.keymap.set("n", "zk", "zk", { desc = "Previous fold" })

---Tab handling
keymap("n", "<leader>to", ":tabnew<cr>", { desc = "Open new tab" })
keymap("n", "<leader>tc", ":tabclose<cr>", { desc = "Close current tab" })
keymap("n", "<leader>tn", ":tabnext<cr>", { desc = "Move to next tab" })
keymap("n", "<leader>tp", ":tabprevious<cr>", { desc = "Move to previous tab" })

---Save and quit
keymap("n", "<leader>w", "<cmd>w<cr>", { desc = "Write" })
keymap("n", "<leader>wa", "<cmd>wall<cr>", { desc = "Write all" })

keymap("n", "<leader>q", "<cmd>q<cr>", { desc = "Quit" })
keymap("n", "<leader>qa", "<cmd>qall<cr>", { desc = "Quit all" })
keymap("n", "<leader>wqa", "<cmd>wqall<cr>", { desc = "write and quit all" })

---window handling
keymap("n", "<leader>s", "<C-w>s", { desc = "split current window horizontally" })
keymap("n", "<leader>sv", "<C-w>v", { desc = "split current window vertically" })
