return {
	"Mofiqul/dracula.nvim",
	priority = 1000,
	opts = {},
	config = function()
		local dracula = require("dracula")
		dracula.setup({
			transparent_bg = true,
		})

		vim.cmd("colorscheme dracula")
	end,
}
