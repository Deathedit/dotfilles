local mainMod = "SUPER"
local terminal = "kitty"

hl.bind(mainMod .. " + RETURN", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + Q", hl.dsp.window.close())
hl.bind(mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit"))

-- Move Window / focus with mainMod + arrow keys
hl.bind(mainMod .. " + left", hl.dsp.window.move({ direction = "l" }))
hl.bind(mainMod .. " + right", hl.dsp.window.move({ direction = "r" }))
hl.bind(mainMod .. " + up", hl.dsp.window.move({ direction = "u" }))
hl.bind(mainMod .. " + down", hl.dsp.window.move({ direction = "d" }))

hl.bind(mainMod .. " + SHIFT + left", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + SHIFT + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + SHIFT + up", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + SHIFT + down", hl.dsp.focus({ direction = "down" }))

hl.bind(mainMod .. " + TAB", hl.dsp.focus({ workspace = "m+1" }))

-- Move active window to a workspace with mainMod + SHIFT + [0-5]
hl.bind(mainMod .. " + SHIFT + 1", hl.dsp.window.move({ workspace = 1 }))
hl.bind(mainMod .. " + SHIFT + 2", hl.dsp.window.move({ workspace = 2 }))
hl.bind(mainMod .. " + SHIFT + 3", hl.dsp.window.move({ workspace = 3 }))
hl.bind(mainMod .. " + SHIFT + 4", hl.dsp.window.move({ workspace = 4 }))
hl.bind(mainMod .. " + SHIFT + 5", hl.dsp.window.move({ workspace = 5 }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag())
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize())

-- hl.bind(mainMod .. " + SHIFT + F", hl.dsp.window.fullscreen_state(2))
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen({ action = "toggle", mode = 1 }))
hl.bind(mainMod .. " + SHIFT + F", hl.dsp.window.fullscreen({ action = "toggle" }))

--Noctalia
local ipc = "noctalia msg"
hl.bind(mainMod .. "+Space", hl.dsp.exec_cmd(ipc .. " panel-toggle launcher"))
hl.bind(mainMod .. "+ SHIFT + S", hl.dsp.exec_cmd(ipc .. " settings-toggle"))