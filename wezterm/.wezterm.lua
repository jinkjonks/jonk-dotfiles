-- Pull in the wezterm API
--
local wezterm = require("wezterm")
-- This table will hold the configuration.
local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end
config.font = wezterm.font("ZedMono Nerd Font Mono", { weight = "Medium", stretch = "Expanded" })
config.color_scheme = "Everblush"
config.font_size = 20

config.window_background_opacity = 1

config.hide_tab_bar_if_only_one_tab = true

return config
