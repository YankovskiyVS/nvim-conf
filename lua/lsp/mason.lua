require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = {
		"gopls",
		"rust_analyzer",
		"pyright",
		"clangd",
		"lua_ls",
		"bashls",
		"jsonls",
		"yamlls",
		"sqlls",
	},
	automatic_installation = false,
})
