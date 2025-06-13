-- Set <leader> to space early
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Load core modules
require("core.options")
require("core.keymaps")
require("core.autocmds")
require("core.signs")
-- Load plugin system (Lazy.nvim)
require("core.plugins")

-- Load LSP setup
require("lsp")
