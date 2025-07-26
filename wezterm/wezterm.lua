local wezterm = require("wezterm")
local config = {}

config.font = wezterm.font("JetBrains Mono")
config.color_scheme = "kanagawabones"
config.window_background_opacity = 0.6
config.macos_window_background_blur = 20
config.background = {
	{
		source = {
			File = "/Users/samdan/Downloads/wallpaperflare.com_wallpaper.jpg",
		},
	},
}

config.max_fps = 240

config.animation_fps = 1
config.cursor_blink_ease_in = "Constant"
config.cursor_blink_ease_out = "Constant"

return config
