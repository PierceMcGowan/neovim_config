return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls"
				}
			})
		end
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require('lspconfig')
			--Add langguagges here
			lspconfig.lua_ls.setup({})
			--Keybinds
			vim.keymap.set('n', 'K', vim.lsp.buf.hover, {}) -- K what does LSP know
			vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {}) -- gd global definition
			vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {}) -- K what does LSP know

		end
	}
}
