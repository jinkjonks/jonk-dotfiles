-- Pull in the wezterm API
--
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end
config.font = wezterm.font'Mononoki Nerd Font'
config.color_scheme = "rose-pine"
config.font_size = 14

config.hide_tab_bar_if_only_one_tab = true
config.macos_window_background_blur = 20
config.use_resize_increments = true

config.ssh_domains = {
	{
		name = "raspi",
		remote_address = "192.168.1.104",
		username = "jonkjonks",
		ssh_option = { identityfile = "~/.ssh/id_rsa.pub" },
	},
}

config.wsl_domains = {
	{ name = "WSL:Arch", distribution = "Arch", default_prog = { "fish" }, default_cwd = "~", username = "jonkjonks" },
}
if not os.getenv("DISPLAY") then
	config.default_domain = "WSL:Arch"
	config.default_prog = { "fish" }
	config.default_cwd =  "~" 

	config.window_background_opacity = 0.95
else
	config.window_background_opacity = 0.9
end

return config
