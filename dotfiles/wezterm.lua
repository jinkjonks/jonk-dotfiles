-- Pull in the wezterm API
--
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end
config.font = wezterm.font("Mononoki Nerd Font", { weight = "Bold" })
config.color_scheme = "rose-pine"
config.font_size = 14

config.window_background_opacity = 0.95

if not os.getenv("HOME") then
	config.default_domain = "WSL:Arch"
	config.default_prog = { "nu" }
	config.default_cwd = "~"
else
	config.hide_tab_bar_if_only_one_tab = true
	config.macos_window_background_blur = 20
end

return config
