-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
config.font = wezterm.font_with_fallback({
	{ family = "ZedMono Nerd Font", weight = "Medium", stretch = "Expanded" },
})
config.font_size = 17.0
-- For example, changing the color scheme:
config.color_scheme = "Everblush"
config.hide_tab_bar_if_only_one_tab = true
config.front_end = "WebGpu"
config.webgpu_power_preference = "HighPerformance"
-- and finally, return the configuration to wezterm
--
config.mouse_bindings = {
	-- Ctrl-click will open the link under the mouse cursor
	{
		event = { Up = { streak = 1, button = "Left" } },
		mods = "CTRL",
		action = wezterm.action.OpenLinkAtMouseCursor,
	},
}
return config
