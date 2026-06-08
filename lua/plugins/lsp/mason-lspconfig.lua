return {
    {
        "williamboman/mason-lspconfig.nvim",
        opts = {
            -- list of servers for mason to install
            ensure_installed = {

                -- website
                "ts_ls",
                "html",
                "cssls",
                "tailwindcss",
                "svelte",
                "eslint",
                "vue_ls",
                "intelephense",
                "laravel_ls",
                "phpactor",

                "lua_ls",
                "graphql",
                "emmet_ls",
                "prismals",

                "pyright",
                "vtsls",
                "yamlls",
                "vimls",
                "ts_ls",
                "rust_analyzer",
                "clangd",
                "copilot",
                "jsonls",

                "sqlls",
                "sqls",

                "dockerls",
                "docker_compose_language_service",
                "docker_language_server",
            },
            -- setup
            utomatic_enable = {
                exclude = {
                    -- "sqls",
                },
            },
        },
        dependencies = {
            {
                "williamboman/mason.nvim",
                opts = {
                    ui = {
                        icons = {
                            package_installed = "✓",
                            package_pending = "➜",
                            package_uninstalled = "✗",
                        },
                    },
                },
            },
            {
                "neovim/nvim-lspconfig",
            },
        },
    },
    {
        "WhoIsSethDaniel/mason-tool-installer.nvim",
        opts = {
            ensure_installed = {
                "prettier", -- prettier formatter

                -- lua
                "stylua", -- formatter

                -- python
                "isort", -- formatter
                "black", -- formatter
                "pylint", -- linter

                -- Js Ts
                "eslint_d", -- linter
                "biome",

                -- c and cpp
                "clang-format", -- formatter
                "cpplint", -- Linter

                -- sql
                "sqlfmt",
                "sql-formatter",

                -- toml file
                "taplo",

                -- dokcer file
                "hadolint",

                -- formatter
                "pint",
            },
        },
        dependencies = {
            "williamboman/mason.nvim",
        },
    },
}
