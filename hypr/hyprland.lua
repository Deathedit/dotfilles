require("module.env")
require("module.monitor")
require("module.rules")
require("module.keybinds")
require("module.animations")

hl.workspace_rule({
	workspace = "1",
	monitor = "DP-1",
	persistent = true,
})

hl.workspace_rule({
	workspace = "2",
	monitor = "DP-1",
	persistent = true,
})

hl.workspace_rule({
	workspace = "3",
	monitor = "DP-1",
	persistent = true,
})

hl.workspace_rule({
	workspace = "4",
	monitor = "DP-2",
	persistent = true,
})

hl.workspace_rule({
	workspace = "5",
	monitor = "DP-2",
	persistent = true,
})

hl.workspace_rule({
	workspace = "6",
	monitor = "DP-2",
	persistent = true,
})

hl.config({
	general = {
		gaps_in = 5,
		gaps_out = 10,
		border_size = 2,
		resize_on_border = true,
		allow_tearing = false,
		layout = "dwindle",
	},
})

hl.config({
	decoration = {
		rounding = 10,
		rounding_power = 2,
		active_opacity = 1.0,
		inactive_opacity = 1.0,

		shadow = {
			enabled = true,
			range = 4,
			render_power = 3,
			color = "rgba(1a1a1aee)",
		},

		blur = {
			enabled = true,
			size = 3,
			passes = 2,
			vibrancy = 0.1696,
			new_optimizations = true,
		},
	},
})

hl.config({
	dwindle = {
		preserve_split = true, -- You probably want this
	},
})

hl.config({
	master = {
		new_status = "master",
	},
})

hl.config({
	input = {
		kb_layout = "dk",
		kb_variant = "",
		kb_model = "",
		kb_options = "",
		kb_rules = "",
		follow_mouse = 1,
		sensitivity = 0, -- -1.0 - 1.0, 0 means no modification.
	},
})

hl.config({
	misc = {
		vrr = 0,
		force_default_wallpaper = 0, -- Set to 0 or 1 to disable the anime mascot wallpapers
		disable_hyprland_logo = true, -- If true disables the random hyprland logo / anime girl background. :(
	},
})

hl.config({
	ecosystem = {
		no_update_news = true,
		no_donation_nag = true,
	},
})

hl.on("hyprland.start", function()
	hl.exec_cmd("noctalia")
	hl.exec_cmd("wl-paste --type text --watch cliphist store")
	hl.exec_cmd("wl-paste --type image --watch cliphist store")
end)

-- For Noctalia Color templates
require("noctalia")
