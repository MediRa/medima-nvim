-- config file sourcing
-- require("lua.config.options")
-- require("lua.config.keymaps")
-- require("lua.config.utils")
--
require("config.options")
require("config.fileforce")
require("config.keymaps")
require("config.utils")
--
require("core.lazy")
require("core.lsp")
require("core.vuels")

-- require("plugins.options")
-- require("plugins.keymaps")

-- require("lazy").setup({
--   { import ="plugins.lsp" },
--   { import ="plugins.completion" },
--   { import ="plugins.editor" },
--   { import ="plugins.ui" },
--   { import ="plugins.colorscheme" },
-- })
