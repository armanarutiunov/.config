return {
	--    'shaunsingh/nord.nvim',
	"EdenEast/nightfox.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		local config = {
			options = {
				-- Compiled file's destination location
				compile_path = vim.fn.stdpath("cache") .. "/nightfox",
				compile_file_suffix = "_compiled", -- Compiled file suffix
				transparent = true, -- Disable setting background
				terminal_colors = true, -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
				dim_inactive = false, -- Non focused panes set to alternative background
				module_default = true, -- Default enable value for modules
				colorblind = {
					enable = false, -- Enable colorblind support
					simulate_only = false, -- Only show simulated colorblind colors and not diff shifted
					severity = {
						protan = 0, -- Severity [0,1] for protan (red)
						deutan = 0, -- Severity [0,1] for deutan (green)
						tritan = 0, -- Severity [0,1] for tritan (blue)
					},
				},
				styles = { -- Style to be applied to different syntax groups
					comments = "NONE", -- Value is any valid attr-list value `:help attr-list`
					conditionals = "NONE",
					constants = "NONE",
					functions = "NONE",
					keywords = "NONE",
					numbers = "NONE",
					operators = "NONE",
					strings = "NONE",
					types = "NONE",
					variables = "NONE",
				},
				inverse = { -- Inverse highlight for different types
					match_paren = false,
					visual = false,
					search = false,
				},
			},
			palettes = {},
			specs = {},
			groups = {},
		}
		-- Example config in lua
		--	vim.cmd("colorscheme duskfox")
		-- Load the colorscheme
		--        require('nord').set()

		-- Toggle background transparency
		--
		local nightfox = require("nightfox")
		nightfox.setup(config)
		nightfox.load()

		-- Make the background of diagnostics messages transparent
		local set_diagnostics_bg_transparency = function()
			vim.cmd([[highlight DiagnosticVirtualTextError guibg=none]])
			vim.cmd([[highlight DiagnosticVirtualTextWarn guibg=none]])
			vim.cmd([[highlight DiagnosticVirtualTextInfo guibg=none]])
			vim.cmd([[highlight DiagnosticVirtualTextHint guibg=none]])
		end
		set_diagnostics_bg_transparency()

		-- Toggle background transparency
		local toggle_transparency = function()
			config.transparent = not config.transparent
			nightfox.setup(config)
			nightfox.load()
			set_diagnostics_bg_transparency()
		end

		vim.keymap.set("n", "<leader>bg", toggle_transparency, { noremap = true, silent = true })

		vim.cmd("colorscheme duskfox")
	end,
}
