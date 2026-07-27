---------------------
---- KEYBINDINGS ----
---------------------

local mainMod = "SUPER" -- Sets "Windows" key as main modifier

-- Example binds, see https://wiki.hypr.land/Configuring/Basics/Binds/ for more
hl.bind(mainMod .. " + Q", hl.dsp.exec_cmd("kitty"))
local closeWindowBind = hl.bind(mainMod .. " + C", hl.dsp.window.close())
closeWindowBind:set_enabled(false)
hl.bind(mainMod .. " + M", hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd("dolphin"))
hl.bind(mainMod .. " + F", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + Z", hl.dsp.exec_cmd("walker"))
hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())
hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit"))    -- dwindle only

-- Move focus with mainMod + arrow keys
hl.bind(mainMod .. " + left",  hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up",    hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down",  hl.dsp.focus({ direction = "down" }))


-- Example special workspace (scratchpad)
-- hl.bind(mainMod .. " + S",         hl.dsp.workspace.toggle_special("magic"))
-- hl.bind(mainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

-- Scroll through existing workspaces with mainMod + scroll
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up",   hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- CUSTOM!!!!

hl.bind(mainMod .. " + backspace", hl.dsp.window.close())

hl.bind("KP_End", hl.dsp.focus({ workspace = 1 }))
hl.bind("KP_Down", hl.dsp.focus({ workspace = 2 }))
hl.bind("KP_Next", hl.dsp.focus({ workspace = 3 }))
hl.bind("KP_Left", hl.dsp.focus({ workspace = 4 }))
hl.bind("KP_Begin", hl.dsp.focus({ workspace = 5 }))
hl.bind("KP_Right", hl.dsp.focus({ workspace = 6 }))
hl.bind("KP_Home", hl.dsp.focus({ workspace = 7 }))
hl.bind("KP_Up", hl.dsp.focus({ workspace = 8 }))
hl.bind("KP_Prior", hl.dsp.focus({ workspace = 9 }))
hl.bind("KP_Insert", hl.dsp.focus({ workspace = 10 }))
hl.bind("ALT + KP_End", hl.dsp.focus({ workspace = 11}))
hl.bind("ALT + KP_Down", hl.dsp.focus({ workspace = 12}))
hl.bind("ALT + KP_Next", hl.dsp.focus({ workspace = 13}))
hl.bind("ALT + KP_Left", hl.dsp.focus({ workspace = 14}))
hl.bind("ALT + KP_Begin", hl.dsp.focus({ workspace = 15}))
hl.bind("ALT + KP_Right", hl.dsp.focus({ workspace = 16}))
hl.bind("ALT + KP_Home", hl.dsp.focus({ workspace = 17}))
hl.bind("ALT + KP_Up", hl.dsp.focus({ workspace = 18}))
hl.bind("ALT + KP_Prior", hl.dsp.focus({ workspace = 19}))
hl.bind("ALT + KP_Insert", hl.dsp.focus({ workspace = 20}))


hl.bind("ALT + S", hl.dsp.exec_cmd("playerctl -p spotify play-pause"))
hl.bind(mainMod .. " + S", hl.dsp.exec_cmd("playerctl play-pause"))
hl.bind("CTRL + A", hl.dsp.exec_cmd ("pactl set-sink-volume @DEFAULT_SINK@ +5%"))
hl.bind("CTRL + Z", hl.dsp.exec_cmd ("pactl set-sink-volume @DEFAULT_SINK@ -5%"))
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd("wal -R"))
hl.bind(mainMod .. " + W", hl.dsp.exec_cmd("killall waybar && waybar &"))
hl.bind(mainMod .. " + D", hl.dsp.exec_cmd("killall dunst && dunst &"))
hl.bind("CTRL + SHIFT + P", hl.dsp.exec_cmd("killall waybar; waybar; wal -R; killall dunst; dunst &"))

hl.bind(mainMod .. " + SHIFT + KP_End", hl.dsp.window.move({ workspace = 1 }))
hl.bind(mainMod .. " + SHIFT + KP_Down", hl.dsp.window.move({ workspace = 2 }))
hl.bind(mainMod .. " + SHIFT + KP_Next", hl.dsp.window.move({ workspace = 3 }))
hl.bind(mainMod .. " + SHIFT + KP_Left", hl.dsp.window.move({ workspace = 4 }))
hl.bind(mainMod .. " + SHIFT + KP_Begin", hl.dsp.window.move({ workspace = 5 }))
hl.bind(mainMod .. " + SHIFT + KP_Right", hl.dsp.window.move({ workspace = 6 }))
hl.bind(mainMod .. " + SHIFT + KP_Home", hl.dsp.window.move({ workspace = 7 }))
hl.bind(mainMod .. " + SHIFT + KP_Up", hl.dsp.window.move({ workspace = 8 }))
hl.bind(mainMod .. " + SHIFT + KP_Prior", hl.dsp.window.move({ workspace = 9 }))
hl.bind(mainMod .. " + SHIFT + KP_Insert", hl.dsp.window.move({ workspace = 10 }))
hl.bind("CTRL + SHIFT + KP_End", hl.dsp.window.move({ workspace = 11 }))
hl.bind("CTRL + SHIFT + KP_Down", hl.dsp.window.move({ workspace = 12 }))
hl.bind("CTRL + SHIFT + KP_Next", hl.dsp.window.move({ workspace = 13 }))
hl.bind("CTRL + SHIFT + KP_Left", hl.dsp.window.move({ workspace = 14 }))
hl.bind("CTRL + SHIFT + KP_Begin", hl.dsp.window.move({ workspace = 15 }))
hl.bind("CTRL + SHIFT + KP_Right", hl.dsp.window.move({ workspace = 16 }))
hl.bind("CTRL + SHIFT + KP_Home", hl.dsp.window.move({ workspace = 17 }))
hl.bind("CTRL + SHIFT + KP_Up", hl.dsp.window.move({ workspace = 18 }))
hl.bind("CTRL + SHIFT + KP_Prior", hl.dsp.window.move({ workspace = 19 }))
hl.bind("CTRL + SHIFT + KP_Insert", hl.dsp.window.move({ workspace = 20 }))
hl.bind(mainMod .. " + D ", hl.dsp.exec_cmd("~/Documents/scripts/walker.sh"))
hl.bind(mainMod .. " + V ", hl.dsp.exec_cmd("walker -m clipboard"))
hl.bind("Print", hl.dsp.exec_cmd("env HQF_MODE=region HQF_ACTION=edit quickshell -c HyprQuickFrame -n"))
hl.bind("CTRL + SHIFT + B", hl.dsp.exec_cmd("~/Documents/scripts/drawing.sh"))
hl.bind("CTRL + F", hl.dsp.exec_cmd("/home/subagon/Documents/password_obsid/bin/python3 /home/subagon/Documents/password_obsid/replay.py"))
