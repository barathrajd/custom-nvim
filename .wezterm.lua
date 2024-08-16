-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'rose-pine-moon'

-- Windows
config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}


-- Fonts
config.font_size = 14
config.line_height = 1.2

-- Fullscreen default
local wezterm = require 'wezterm'
local mux = wezterm.mux

wezterm.on('gui-startup', function(window)
  local tab, pane, window = mux.spawn_window(cmd or {})
  local gui_window = window:gui_window();
  gui_window:perform_action(wezterm.action.ToggleFullScreen, pane)
end)

-- Default Shell
config.default_domain = 'WSL:Ubuntu'

-- and finally, return the configuration to wezterm
return config
