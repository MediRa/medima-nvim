return {
    "stevearc/conform.nvim",
    opts = {},
    config = function()
        require("conform").setup({
            formatters_by_ft = {
                lua = { "stylua" },
                go = { "goimports", "golines", "gofmt" },
                rust = { "rustfmt", lsp_format = "fallback" },
                javascript = { "prettierd", "prettier", stop_after_first = true },
            },
            format_on_save = {
                lsp_format = "fallback",
                timeout_ms = 500,
                lsp_fallback = true,
                async = false,
            },
        })
    end,
}
