return {
	-- ... ปลั๊กอินอื่นๆ ของคุณ ...

	{
		"neovim/nvim-lspconfig",
		event = { "BufReadPre", "BufNewFile" }, -- ให้โหลดเมื่อเปิดไฟล์
		dependencies = {
			{ "hrsh7th/nvim-cmp" }, -- ขึ้นอยู่กับ cmp
			{ "williamboman/mason.nvim" }, -- ตัวจัดการ Language Server, DAP, Linter, Formatter
			{ "williamboman/mason-lspconfig.nvim" }, -- ส่วนเสริมสำหรับ mason และ lspconfig
			{ "jose-elias-alvarez/null-ls.nvim" }, -- สำหรับ Formatters และ Linters ที่ไม่ได้เป็น LSP โดยตรง
			{ "L3MON4D3/LuaSnip" },
		},
		config = function()
			local lspconfig = require("lspconfig")
			local mason = require("mason")
			local mason_lspconfig = require("mason-lspconfig")
			local null_ls = require("null-ls")

			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			-- ติดตั้ง Language Server ที่จำเป็นผ่าน mason (จะกล่าวถึงในขั้นตอนถัดไป)
			mason.setup({})
			mason_lspconfig.setup({
				automatic_installation = true, -- ติดตั้ง Language Server อัตโนมัติถ้ายังไม่มี
			})

			-- ตั้งค่า null-ls (จะกล่าวถึงในภายหลัง)
			null_ls.setup({})

			-- ตั้งค่า Language Server แต่ละตัว (จะกล่าวถึงในขั้นตอนถัดไป)
			-- ตัวอย่างการตั้งค่าสำหรับ pyright (Python)
			lspconfig.pyright.setup({})

			-- ตัวอย่างการตั้งค่าสำหรับ tsserver (TypeScript/JavaScript/React)
			lspconfig.ts_ls.setup({})

			-- ตัวอย่างการตั้งค่าสำหรับ lua_ls (Lua)
			lspconfig.lua_ls.setup({
				settings = {
					Lua = {
						diagnostics = {
							globals = { "vim" },
						},
					},
				},
			})

			lspconfig.html.setup({
				capabilities = capabilities,
			})

			lspconfig.cssls.setup({
				capabilities = capabilities,
				-- เพิ่มการตั้งค่าเฉพาะสำหรับ cssls ได้ที่นี่
			})

			lspconfig.tailwindcss.setup({
				capabilities = capabilities,
				-- เพิ่มการตั้งค่าเฉพาะสำหรับ cssls ได้ที่นี่
			})

			-- ตั้งค่า Keymappings สำหรับ LSP (จะกล่าวถึงในภายหลัง)
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "[G]oto [D]efinition" })
			vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "[K] Hover Information" })
			vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "[R]e[n]ame" })
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "[C]ode [A]ction" })
			vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "[G]oto [R]eferences" })
			vim.keymap.set("n", "<leader>D", vim.diagnostic.open_float, { desc = "Show Diagnostics" })
			vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to Previous Diagnostic" })
			vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to Next Diagnostic" })
		end,
	},

	-- ... ปลั๊กอินอื่นๆ ของคุณ ...
}
