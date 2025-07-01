return {
    { "L3MON4D3/LuaSnip", keys = {} },
    {
        "saghen/blink.cmp",
        dependencies = {
            "rafamadriz/friendly-snippets",
            version = "1.*",
            config = function()
                require("blink.cmp").setup({
                    snippets = { preset = "luasnip" },
                    signature = { enabled = true },
                    appearance = {
                        use_nvim_cmp_as_default = false,
                        nerd_font_variant = "normal",
                    },
                    sources = {
                        default = { "lsp", "path", "snippets", "buffer" },
                        providers = {
                            cmdline = {
                                min_keyword_length = 2,
                            },
                        },
                    },
                    keymap = {
                        preset = 'enter',

                        ['<Tab>'] = { 'snippet_forward', 'select_next', 'fallback' },
                        ['<S-Tab>'] = { 'snippet_backward', 'select_prev', 'fallback' },
                        ['<C-Space>'] = { 'show', 'show_documentation', 'hide_documentation' },
                        ['<C-e>'] = { 'hide' },

                        ['<C-n>'] = {"select_next"},
                        ['<C-p>'] = {"select_prev"},
                        ['<C-j>'] = {"select_next"},
                        ['<C-k>'] = {"select_prev"},

                        ['<C-d>'] = { 'scroll_documentation_down' },
                        ['<C-u>'] = { 'scroll_documentation_up' },
                    },
                    cmdline = {
                        enabled = false,
                        completion = { menu = { auto_show = true } },
                        keymap = {
                            ["<CR>"] = { "accept_and_enter", "fallback" },
                        },
                    },
                    completion = {
                        menu = {
                            border = 'solid',
                            scrolloff = 1,
                            scrollbar = true,
                            draw = {
                                columns = {
                                    { "kind_icon" },
                                    { "label",      "label_description", gap = 2 },
                                    { "kind" },
                                    { "source_name" },
                                },
                            },
                        },
                        documentation = {
                            window = {
                                border = "single",
                                scrollbar = false,
                                winhighlight = 'Normal:BlinkCmpDoc,FloatBorder:BlinkCmpDocBorder,EndOfBuffer:BlinkCmpDoc',
                            },
                            auto_show = true,
                            auto_show_delay_ms = 500,
                        },
                    },
                })

                require("luasnip.loaders.from_vscode").lazy_load()
            end,
        },
    }
}
