-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
config.font = wezterm.font_with_fallback({
	{ family = "ZedMono Nerd Font", weight = "Medium", stretch = "Expanded" },
})
config.font_size = 18.0
-- For example, changing the color scheme:
config.color_scheme = "Everblush"

-- and finally, return the configuration to wezterm
return config
