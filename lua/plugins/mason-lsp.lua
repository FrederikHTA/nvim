return {
	'neovim/nvim-lspconfig',
	lazy = false,
	dependencies = {
		-- Automatically install LSPs to stdpath for neovim
		{ 'williamboman/mason.nvim', config = true },
		'williamboman/mason-lspconfig.nvim',

		-- Useful status updates for LSP
		-- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})`
		{ 'j-hui/fidget.nvim',       opts = {} },

		-- Additional lua configuration, makes nvim stuff amazing!
		'folke/neodev.nvim',
		-- 'creativenull/efmls-configs-nvim'
		-- 'Issafalcon/lsp-overloads.nvim'
	},
}