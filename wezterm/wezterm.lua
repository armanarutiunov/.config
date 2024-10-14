local wezterm = require("wezterm")

local config = wezterm.config_builder()

config = {
	automatically_reload_config = true,
	enable_tab_bar = false,
	window_close_confirmation = "NeverPrompt",
	window_decorations = "RESIZE",
	default_cursor_style = "BlinkingBar",
	color_scheme = "Nord (Gogh)",
	font = wezterm.font("JetBrains Mono", { weight = "Bold" }),
	font_size = 16,
	background = {
		{
			source = {
				File = "Users/arman.arutiunov/Pictures/bladerunner_bg.jpg",
			},
			hsb = {
				hue = 1.0,
				saturation = 1.02,
				brightness = 0.25,
			},
			--width = "100%",
			--height = "100%",
		},
		{
			source = {
				Color = "#14161B",
			},
			width = "100%",
			height = "100%",
			opacity = 0.9,
		},
	},
}

return config
