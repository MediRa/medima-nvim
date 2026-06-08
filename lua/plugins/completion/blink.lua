return {
    "saghen/blink.cmp",
    dependencies = { "rafamadriz/friendly-snippets" },
    version = "1.*",
    opts = {
        keymap = {
            preset = "default",
            -- accepting keymap
            ["<Enter>"] = { "accept", "fallback" },
            ["<Tab>"] = { "accept", "fallback" },

            -- documentation popup navigation keymap
            ["<C-j>"] = { "select_next" },
            ["<C-k>"] = { "select_prev" },
        },
        appearance = {
            nerd_font_variant = "mono",
        },
        -- completion = {
        --     trigger = {
        --         show_on_keyword = true,
        --     },
        --     documentation = { auto_show = true },
        --     menu = { auto_show = true },
        --     list = {
        --         selection = {
        --             preselect = true,
        --             auto_insert = true,
        --         },
        --     },
        -- },
        completion = {
            trigger = {
                show_on_keyword = true,
            },
            list = {
                selection = {
                    preselect = true,
                    auto_insert = true,
                },
            },
            menu = {
                border = "single",
                scrolloff = 1,
                scrollbar = true,
                draw = {
                    columns = {
                        { "kind_icon", gap = 2 },

                        { "label", "label_description", gap = 2 },
                        { "kind", gap = 3 },
                        { "source_name", gap = 3 },
                    },
                },
            },
            documentation = {
                window = {
                    border = "single",
                    scrollbar = true,
                    winhighlight = "Normal:BlinkCmpDoc,FloatBorder:BlinkCmpDocBorder,EndOfBuffer:BlinkCmpDoc",
                },
                auto_show = true,
                auto_show_delay_ms = 500,
                -- ghost_text = { = true },
            },
        },

        sources = {
            default = {
                "lsp",
                "snippets",
                "blade-nav",
                "buffer",
                "path",
            },
            providers = {
                dadbod = { module = "vim_deadbod_completion.blink" },
                ["blade-nav"] = {
                    name = "blade-nav",
                    module = "blade-nav.integrations.blink",
                },
            },

            -- providers = {
            --     dadbod = { module = "vim_deadbod_completion.blink" },
            --

            -- ['blade-nav'] = {
            --     name = 'blade-nav',
            --     module = 'blade-nav.integrations.blink',
            -- },
        },

        fuzzy = {
            implementation = "prefer_rust_with_warning",
            sorts = {
                "exact",
                "score",
                "label",
                "sort_text",
            },
        },
        signature = {
            enabled = true,
            window = {
                border = "single",
            },
        },
    },
    opts_extend = { "sources.default" },
}
