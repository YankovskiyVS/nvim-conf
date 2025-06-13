local lspconfig = require("lspconfig")

-- Common on_attach function
local on_attach = function(_, bufnr)
	local map = vim.keymap.set
	local opts = { buffer = bufnr }

	map("n", "gd", vim.lsp.buf.definition, opts)
	map("n", "K", vim.lsp.buf.hover, opts)
	map("n", "<leader>rn", vim.lsp.buf.rename, opts)
	map("n", "<leader>ca", vim.lsp.buf.code_action, opts)
	map("n", "<leader>f", function()
		vim.lsp.buf.format({ async = true })
	end, opts)
end

local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- -- Setup servers
-- local servers = {
-- 	gopls = {},
-- 	rust_analyzer = {},
-- 	pyright = {},
-- 	clangd = {},
-- 	lua_ls = {
-- 		settings = {
-- 			Lua = {
-- 				diagnostics = { globals = { "vim" } },
-- 				workspace = { checkThirdParty = false },
-- 			},
-- 		},
-- 	},
-- 	bashls = {},
-- 	jsonls = {},
-- 	yamlls = {},
-- 	sqlls = {},
-- }
--
-- for name, config in pairs(servers) do
-- 	config.on_attach = on_attach
-- 	config.capabilities = capabilities
-- 	lspconfig[name].setup(config)
-- end
