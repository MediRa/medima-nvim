return {
    "olimorris/codecompanion.nvim",
    enabled = false,
    opts = {
        extensions = {
            history = {
                enabled = true,
                opts = {
                    keymap = "gh",
                    auto_generate_title = true,
                    continue_last_chat = false,
                    delete_on_clearing_chat = false,
                    picker = "snacks",
                    enable_logging = false,
                    dir_to_save = vim.fn.stdpath("data") .. "/codecompanion-history",
                },
            },
            -- mcphub = {
            --   callback = "mcphub.extensions.codecompanion",
            --   opts = {
            --     make_vars = true,
            --     make_slash_commands = true,
            --     show_result_in_chat = true,
            --   },
            -- },
            vectorcode = {
                opts = {
                    add_tool = true,
                },
            },
        },
        adapters = {
            copilot = function()
                return require("codecompanion.adapters").extend("copilot", {
                    schema = {
                        model = {
                            default = "gemini-2.5-pro",
                        },
                    },
                })
            end,
        },
    },
    keys = {
        { "<leader>ic", "<cmd>CodeCompanion<cr>", desc = "CodeCompanion" },
        { "<leader>iC", "<cmd>CodeCompanionChat<cr>", desc = "CodeCompanion Chat" },
        { "<leader>ia", "<cmd>CodeCompanionActions<cr>", desc = "CodeCompanion Actions" },
        { "<leader>id", "<cmd>CodeCompanionCmd<cr>", desc = "CodeCompanion CMD" },
    },
    dependencies = {
        "j-hui/fidget.nvim",
        "ravitemer/codecompanion-history.nvim", -- Save and load conversation history
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter",
        -- {
        --     "Davidyz/VectorCode", -- Index and search code in your repositories
        --     version = "*",
        --     build = "pipx upgrade vectorcode",
        --     dependencies = { "nvim-lua/plenary.nvim" },
        -- },
    },
    config = function()
        require("codecompanion").setup({
            strategies = {
                chat = {
                    adapter = "copilot",
                },
                inline = {
                    adapter = "copilot",
                },
                cmd = {
                    adapter = "copilot",
                },
            },
            display = {
                action_palette = {
                    width = 95,
                    height = 10,
                    prompt = "Prompt ", -- Prompt used for interactive LLM calls
                    provider = "snacks", -- Can be "default", "telescope", "mini_pick" or "snacks". If not specified, the plugin will autodetect installed providers.
                    opts = {
                        show_default_actions = true, -- Show the default actions in the action palette?
                        show_default_prompt_library = true, -- Show the default prompt library in the action palette?
                    },
                },
            },
        })
    end,
}
