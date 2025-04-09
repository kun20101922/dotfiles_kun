return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")

		vim.keymap.set({ "n", "v" }, "<leader>cf", function()
			LazyVim.format({ force = true })
		end, { desc = "Format" })
	end,
}
