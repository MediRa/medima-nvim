return {
    "stevearc/conform.nvim",
    opts = {
        formatters_by_ft = {
            python = { "isort", "black" },
            lua = { "stylua" },

            go = { "goimports", "golines", "gofmt" },
            rust = { "rustfmt", lsp_format = "fallback" },
            javascript = { "prettierd", "prettier", stop_after_first = true },
            c = { "clang-format" },
            cpp = { "clang-format" },
            sh = {
                "beautysh",
            },
            css = {
                "prettier",
            },
            scss = {
                "prettier",
            },
            toml = {
                "taplo",
            },
            markdown = {
                "prettier",
            },
            php = {
                "pint",
            },
            yaml = {
                "prettier",
            },
            json = {
                "prettier",
            },
        },
        default_format_opts = { lsp_format = "fallback" },
        format_on_save = {

            lsp_format = "fallback",
            timeout_ms = 500,
            lsp_fallback = true,
            async = false,
        },
    },
}
