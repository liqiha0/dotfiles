local wezterm = require("wezterm")

local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end

config.font = wezterm.font("JetBrains Mono", { weight = "Bold" })
config.font_size = 14.0
config.color_scheme = "catppuccin-frappe"

-- Fix rendering lag on Wayland/Niri
config.front_end = "OpenGL"
config.hide_tab_bar_if_only_one_tab = true

config.window_background_opacity = 0.9

config.macos_window_background_blur = 30

config.window_decorations = "RESIZE"

config.use_fancy_tab_bar = false

config.default_cursor_style = "BlinkingBar"

-- config.set_environment_variables = {
-- 	COLORTERM = "truecolor",
-- 	TERM = "xterm-256color",
-- }

config.mux_enable_ssh_agent = false
local onep_auth = string.format("%s/.1password/agent.sock", wezterm.home_dir)
if #wezterm.glob(onep_auth) == 1 then
	config.default_ssh_auth_sock = onep_auth
end

return config
