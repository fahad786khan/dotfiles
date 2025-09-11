-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'Catppuccin Mocha' -- or Macchiato, Frappe, Latte
config.window_decorations = "RESIZE"

config.window_padding = {
  left = 1,
  right = 1,
  top = 0,
  bottom = 0,
}
-- size of terminal at startup
config.initial_rows = 32
config.initial_cols = 100

--config.font = wezterm.font 'JetBrains Mono Nerd Font
--config.font = wezterm.font({ family = 'JetBrains Mono Nerd Font' })
-- And a font size that won't have you squinting
--config.font_size = 13

-- Telling wezterm to show wsl arch in startup always
config.default_prog = { 'wsl.exe', '-d', 'archlinux' ,'--cd', '~'}

-- Removing tab bar
config.enable_tab_bar = false

config.keys = {
  -- Copy selection to clipboard
  {key="c", mods="CTRL", action=wezterm.action.CopyTo "Clipboard"},
  
  -- Paste from clipboard
  {key="v", mods="CTRL", action=wezterm.action.PasteFrom "Clipboard"},
}

-- and finally, return the configuration to wezterm
return config
