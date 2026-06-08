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
    spec = {
        { import = "plugins.colorscheme" },
        { import = "plugins.lsp" },
        { import = "plugins.completion" },
        { import = "plugins.editor" },
        { import = "plugins.ui" },
        { import = "plugins.ai" },
        { import = "plugins.git" },
        { import = "plugins.tool" },
        { import = "plugins.tool.browser" },
        { import = "plugins.sql" },
        -- { import = "plugins.linting" },
    },
    install = {
        missing = true,
        -- colorcheme = "catppuccin"
    },
    checker = {
        enable = true,
        notify = true,
    },
    change_detection = {
        enable = true,
        notify = true,
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
