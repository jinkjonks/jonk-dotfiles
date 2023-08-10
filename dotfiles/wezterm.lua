-- Pull in the wezterm API
--
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = "rose-pine"
config.font = wezterm.font("Mononoki Nerd Font", { weight = "Bold" })
config.font_size = 20

config.hide_tab_bar_if_only_one_tab = true
config.macos_window_background_blur = 20
config.window_background_opacity = 0.9
config.use_resize_increments = true

config.ssh_domains = {
	{
		name = "raspi",
		remote_address = "192.168.1.104",
		username = "jonkjonks",
		ssh_option = { identityfile = "~/.ssh/id_rsa.pub" },
	},
}
return config
