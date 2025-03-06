local wezterm = require("wezterm")
local mux = wezterm.mux

wezterm.on("gui-startup", function()
	local tab, pane, window = mux.spawn_window({})
	window:gui_window():maximize()
end)

local config = {
	color_scheme = "Tokyo Night",
	default_prog = { "tmux" },
	font = wezterm.font("Hack Nerd Font Mono"),
	front_end = "WebGpu",
	window_background_opacity = 0.8,
	window_decorations = "INTEGRATED_BUTTONS|RESIZE",
	webgpu_power_preference = "HighPerformance",
}

return config
