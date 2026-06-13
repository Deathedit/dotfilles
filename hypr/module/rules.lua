hl.layer_rule({
	name = "noctalia",
	match = {
		namespace = "^noctalia-(bar-.+|notification|dock|panel)$",
	},
	ignore_alpha = 0.5,
	blur = true,
	blur_popups = true,
})

hl.window_rule({
	match = {
		class = ".*",
	},
	suppress_event = "maximize",
})

hl.window_rule({
	match = {
		class = "^$",
		title = "^$",
		xwayland = true,
		float = true,
		fullscreen = false,
		pin = false,
	},
	no_focus = true,
})

hl.window_rule({
	match = {
		class = "hyprland-run",
	},
	move = "20 monitor_h-120",
	float = true,
})

hl.window_rule({
	match = {
		class = "steam",
	},
	workspace = "3 silent",
	no_blur = true,
})

hl.window_rule({
	match = {
		title = "Friends List",
	},
	size = "340 640",
	no_blur = true,
	float = true,
})

hl.window_rule({
	match = {
		title = "Steam Settings",
	},
	size = "900 700",
	no_blur = true,
	float = true,
})

hl.window_rule({
	match = {
		title = "CachyOS Hello",
	},
	size = "900 720",
	float = true,
})

hl.window_rule({
	match = {
		class = "codium",
		title = "Open Folder|Open File",
	},
	size = "850 700",
	float = true,
})

hl.window_rule({
	match = {
		title = "Auto Update - GUI",
	},
	size = "500 400",
	float = true,
})

hl.window_rule({
	match = {
		class = "vesktop",
	},
	workspace = "4 silent",
})

hl.window_rule({
	match = {
		class = "com.vysp3r.ProtonPlus|chrome-nngceckbapebfimnlniiiahkandclblb-Default|io.github.ilya_zlobintsev.LACT",
	},
	float = true,
})

hl.window_rule({
	match = {
		class = "gamescope|steam_app_1963610|Road to Vostok",
	},
	workspace = "2 silent",
	no_blur = true,
})

hl.window_rule({
	match = {
		class = "kitty",
	},
	opacity = 1,
})

hl.window_rule({
	match = {
		class = "dev.noctalia.Noctalia.Settings",
	},
	size = "900 1050",
	float = true,
})
