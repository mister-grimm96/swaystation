return {
	"stevearc/conform.nvim",
	event = { "InsertEnter", "LspAttach" },
	opts = {
		formatters_by_ft = {
			javascript = { "biome" },
			typescript = { "biome" },
			javascriptreact = { "biome" },
			typescriptreact = { "biome" },
			json = { "biome" },
			jsoc = { "biome" },
			svelte = { "prettier" },
			css = { "biome" },
			html = { "prettier" },
			yaml = { "prettier" },
			markdown = { "prettier" },
			graphql = { "prettier" },
			liquid = { "prettier" },
			lua = { "stylua" },
			python = { "isort", "black" },
			sql = { "pg_format" },
			prisma = { "prismals" },
		},
		formatters = {
			pg_format = {
				prepend_args = { "-s", "2" },
			},
		},
		format_on_save = false,
	},
	keys = {
		{
			mode = { "n", "v" },
			"<C-S-M>",
			function()
				require("conform").format({
					lsp_fallback = true,
					timeout_ms = 1000,
				})
			end,
			desc = "Conform: Format Manually",
		},
	},
}
