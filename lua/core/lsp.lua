vim.lsp.config("yamlls", {
    settings = {
        yaml = {
            schemas = {
                -- Docker Compose schema
                ["https://raw.githubusercontent.com/compose-spec/compose-spec/master/schema/compose-spec.json"] = {
                    "compose.yaml",
                    "compose.yml",
                    "docker-compose.yaml",
                    "docker-compose.yml",
                },
            },
            validate = true,
            completion = true,
            hover = true,
        },
    },
})

vim.lsp.config("html", {
    cmd = { "vscode-html-language-server", "--stdio" },
    filetypes = {
        "html",
        "blade",
        "javascriptreact",
        "typescriptreact",
        "svelte",
    },
    root_markers = { "index.html", ".git" },
    init_options = { provideFormatter = true },
})

vim.lsp.config("laravel_ls", {
    cmd = { "laravel-ls" },
    filetypes = { "php", "blade" },
    root_markers = { "artisan" },
})

vim.lsp.config("intelephense", {
    cmd = {
        "intelephense",
        "--stdio",
    },
    filetypes = {
        "php",
        "blade",
    },
    root_markers = {
        { ".git", "composer.json" },
    },
    settings = {
        intelephense = {
            telemetry = {
                enabled = false,
            },
        },
    },
})

vim.lsp.config("pyright", {
    cmd = {
        "docker",
        "compose",
        "exec",
        "-i",
        "web_app_container_name",
        "pyright-langserver",
        "--stdio",
    },
    root_dir = require("lspconfig").util.root_pattern("docker-compose.yml", ".git"),
})

vim.lsp.config("clangd", {
    init_options = {
        fallbackFlags = { "--std=c23" },
    },
})
vim.lsp.config("lua_ls", {
    cmd = { "lua-language-server" },
    filetypes = { "lua" },
    settings = {
        Lua = {
            runtime = {
                version = "LuaJIT",
            },
            diagnostics = {
                globals = { "vim", "require" },
            },
        },
    },
})

vim.lsp.config("sqls", {
    settings = {
        sqls = {
            connections = {
                {
                    driver = "postgresql",
                    dataSourceName = "host=127.0.0.1 port=5432 user=postgres password=postgres dbname=mydb",
                },
            },
        },
    },
})

vim.lsp.config("rust_analyzer", {
    cmd = { "rust-analyzer" },
    settings = {
        ["rust-analyzer"] = {
            files = { watcher = "server" },
            cargo = { targetDir = true },
            check = { command = "clippy" },
            inlayHints = {
                bindingModeHints = { enabled = true },
                closureCaptureHints = { enabled = true },
                closureReturnTypeHints = { enable = "always" },
                maxLength = 100,
            },
            rustc = { source = "discover" },
        },
    },
    root_markers = { { "Config.toml" }, ".git" },
})
-- vim.lsp.enable("rust_analyzer")
vim.lsp.enable({
    "gopls",
    "lua_ls",
    "rust_analyzer",

    -- website
    "html",
    "cssls",
    "ts_ls",
    "vue_ls",
    "tailwindcss",
    "vtsls",
    "laravel_ls",

    "intelephense",
    "protols",
    "clangd",
    "bashls",

    -- sql
    "sqls",
    "postgres_lsp",

    -- docker
    "dockerls",
    "docker_compose_language_service",
    "docker_language_server",

    -- emmetls
    "emmetls",
})

vim.diagnostic.config({
    virtual_lines = false,
    -- virtual_text = true,
    underline = true,
    update_in_insert = false,
    severity_sort = true,
    float = {
        border = "rounded",
        source = true,
    },
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = "󰅚 ",
            [vim.diagnostic.severity.WARN] = "󰀪 ",
            [vim.diagnostic.severity.INFO] = "󰋽 ",
            [vim.diagnostic.severity.HINT] = "󰌶 ",
        },
        numhl = {
            [vim.diagnostic.severity.ERROR] = "ErrorMsg",
            [vim.diagnostic.severity.WARN] = "WarningMsg",
        },
    },
})
