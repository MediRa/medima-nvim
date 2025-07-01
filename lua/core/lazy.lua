-- Lazy configuration
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        "lazypath",
    })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    { import = "plugins.colorscheme" },
    { import = "plugins.lsp" },
    { import = "plugins.completion" },
    { import = "plugins.editor" },
    { import = "plugins.ui" },
    { import = "plugins.tool" },
    { import = "plugins.tool.browser" },
}, {
    install = {
        missing = true,
        -- colorcheme = "catppuccin"
    },
    checker = {
        enable = true,
        notify = false,
    },
    change_detection = {
        enable = true,
        notify = false,
    },
    ui = {
        -- border = rounded
    },
    performance = {
        rtp = {
            disable_plugin = {
                "gzip",
                "tarPlugin",
                "tohtml",
                "tutor",
                "zipPlugin",
            },
        },
    },
})
