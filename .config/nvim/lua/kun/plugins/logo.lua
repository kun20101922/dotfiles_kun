local logo1 = [[

 ██████╗ ███╗   ██╗██╗  ██╗   ██╗    ███████╗ █████╗ ███╗   ██╗███████╗
██╔═══██╗████╗  ██║██║  ╚██╗ ██╔╝    ██╔════╝██╔══██╗████╗  ██║██╔════╝
██║   ██║██╔██╗ ██║██║   ╚████╔╝     █████╗  ███████║██╔██╗ ██║███████╗
██║   ██║██║╚██╗██║██║    ╚██╔╝      ██╔══╝  ██╔══██║██║╚██╗██║╚════██║
╚██████╔╝██║ ╚████║███████╗██║       ██║     ██║  ██║██║ ╚████║███████║
 ╚═════╝ ╚═╝  ╚═══╝╚══════╝╚═╝       ╚═╝     ╚═╝  ╚═╝╚═╝  ╚═══╝╚══════╝

]]
return {
	"folke/snacks.nvim",
	lazy = false,
	priority = 1000,
	opts = {
		dashboard = {
			preset = {
				header = logo1,
			},
			--sections = {
			--{ section = "header" },
			--{ section = "keys", gap = 1, padding = 1 },
			--{ section = "startup" },
			--{
			--	section = "terminal",
			--	cmd = "pokemon-colorscripts -r --no-title; sleep .1",
			--		random = 10,
			--		pane = 2,
			--		indent = 4,
			--		height = 30,
			--	},
		},
	},
}
