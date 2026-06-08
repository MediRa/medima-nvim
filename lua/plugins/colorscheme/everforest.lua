return {
    "sainnhe/everforest",
    priority = 1000,
    config = function()
        vim.g.everforest_enable_italic = true
        vim.g.everforest_background = "soft"
        vim.cmd("colorscheme everforest")
    end,

    -- Customization for Pmenu
    vim.api.nvim_set_hl(0, "PmenuSel", { bg = "#282C34", fg = "NONE" }),
    vim.api.nvim_set_hl(0, "Pmenu", { fg = "#C5CDD9", bg = "#22252A" }),

    vim.api.nvim_set_hl(
        0,
        "CmpItemAbbrDeprecated",
        { fg = "#7E8294", bg = "NONE", strikethrough = true }
    ),
}
