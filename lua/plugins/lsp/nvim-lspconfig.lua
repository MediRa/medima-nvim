return {
    "neovim/nvim-lspconfig",

    config = function()
        -- local capabilities = require("cmp_nvim_lsp").default_capabilities()

        vim.lsp.config("lua_ls", {
            capabilities = capabilities,
            settings = {
                ["lua_ls"] = {},
            }
        })

        vim.lsp.config("htmls", {
            capabilities = capabilities,
            settings = {
                ["htmls"] = {}
            }
        })
        vim.lsp.config("vimls", {
            capabilities = capabilities,
            settings = {
                ["vimls"] = {}
            }
        })
        vim.lsp.config("tsserver", {
            capabilities = capabilities,
            settings = {
                ["tsserver"] = {}
            }
        })

        -- Keymaps
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
        -- vim.keymap.set("n", "gr", vim.lsp.buf.definition, {})
        vim.keymap.set({"n"}, "<leader>ca", vim.lsp.buf.code_action, {})
    end
}
