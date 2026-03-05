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
		top = 0,
		bottom = 0,
	},
	color_scheme = "kanagawa-paper-ink",
	color_scheme_dirs = { "colors" },
	font = wezterm.font("JetBrains Mono", { weight = "Regular" }),
	font_size = 18,
	line_height = 1.2,
	animation_fps = 120,
	max_fps = 120,
	prefer_egl = true,
	front_end = "WebGpu",
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
		{
			key = "Enter",
			mods = "SHIFT",
			action = wezterm.action.SendString("\x1b\r"),
		},
		{
			key = "£",
			action = wezterm.action.SendString("#"),
		},
		{
			key = "Backspace",
			mods = "CMD",
			action = wezterm.action.SendString("\x15"),
		},
		{
			key = "LeftArrow",
			mods = "CMD",
			action = wezterm.action.SendKey({ key = "Home" }),
		},
		{
			key = "RightArrow",
			mods = "CMD",
			action = wezterm.action.SendKey({ key = "End" }),
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
