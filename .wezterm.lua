local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.color_scheme = "Tokyo Night"
config.hide_tab_bar_if_only_one_tab = true

config.window_padding = {
	left = 0,
	right = 0,
	-- top = 0,
	bottom = 0,
}

config.term = "xterm-256color"
config.window_background_opacity = 0.9
config.window_decorations = "RESIZE"

config.default_prog = { "/usr/local/bin/tmux", "-l" }

config.font = wezterm.font_with_fallback({
	"Operator Mono Lig",
	"Fira Code Nerd Font",
}, { weight = "Book" })

config.font_size = 13

return config
