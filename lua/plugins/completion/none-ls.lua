return {
  "nvimtools/none-ls.nvim",

  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
        sources = {
          null_ls.builtins.formatting.stylua,
          null_ls.builtins.formatting.prettier,
          null_ls.builtins.formatting.black,
          null_ls.builtins.formatting.isort,
          -- null_ls.builtins.completion.spell,
          -- require("none-ls.diagnostics.eslint"), -- requires none-ls-extras.nvim
        },
    })

    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
  end,

}
