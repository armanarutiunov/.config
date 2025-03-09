local wezterm = require("wezterm")

local config = wezterm.config_builder()

config = {
	automatically_reload_config = true,
	enable_tab_bar = false,
	window_close_confirmation = "NeverPrompt",
	window_decorations = "RESIZE",
	window_padding = {
		left = 0,
		right = 0,
		top = 30,
		bottom = 0,
	},
	default_cursor_style = "BlinkingBar",
	color_scheme = "Nord (Gogh)",
	font = wezterm.font("JetBrains Mono", { weight = "Regular" }),
	font_size = 17,
	line_height = 1.2,
	max_fps = 120,
	prefer_egl = true,
	keys = {
		{
			key = "LeftArrow",
			mods = "OPT",
			action = wezterm.action.SendKey({ mods = "OPT", key = "b" }),
		},
		{
			key = "RightArrow",
			mods = "OPT",
			action = wezterm.action.SendKey({ mods = "OPT", key = "f" }),
		},
	},
	background = {
		{
			source = {
				File = os.getenv("HOME") .. "/.config/wezterm/nvim_bg.jpg",
			},
			hsb = {
				hue = 1.0,
				saturation = 1.02,
				brightness = 0.25,
			},
		},
		{
			source = {
				Color = "#14161B",
			},
			width = "100%",
			height = "100%",
			opacity = 0.95,
		},
	},
}

return config
