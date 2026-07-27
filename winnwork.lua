--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------

-- See https://wiki.hypr.land/Configuring/Basics/Window-Rules/
-- and https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/

-- Example window rules that are useful

local suppressMaximizeRule = hl.window_rule({
    -- Ignore maximize requests from all apps. You'll probably like this.
    name  = "suppress-maximize-events",
    match = {{ class = ".*" }},

    suppress_event = "maximize",
})
-- suppressMaximizeRule:set_enabled(false)

hl.window_rule({
    -- Fix some dragging issues with XWayland
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})

-- Layer rules also return a handle.
-- local overlayLayerRule = hl.layer_rule({
--     name  = "no-anim-overlay",
--     match = { namespace = "^my-overlay$" },
--     no_anim = true,
-- })
-- overlayLayerRule:set_enabled(false)

-- Hyprland-run windowrule
hl.window_rule({
    name  = "move-hyprland-run",
    match = { class = "hyprland-run" },

    move  = "20 monitor_h-120",
    float = true,
})

hl.window_rule({
  name = "thunarfloat",
  match = { class = "thunar" },
  size = {1000,700},
  float = true,
})

hl.window_rule({
  name = "waypaperfloat",
  match = { class = "waypaper" },
  size = {1000,700},
  float = true,
})

hl.workspace_rule({workspace = "", gaps_out = 10,20,20,20})

local colors = require("colors")

hl.window_rule({
  name = "borderwindows",
  match = { workspace = "" },
  border_color = colors.color13 .. " " .. colors.color1,
})


hl.window_rule({
  name = "lockdashit",
  match = {
    class = "Discorad"
},
  workspace = "17 sialent",
})

hl.window_rule({
  name = "lockdashit2",
  match = {
    class = "vesktoap"
},
  workspace = "17 silent",
})

hl.window_rule({
  name = "steamy",
  match = {
    class = "steam"
},
  workspace = "14 silent",
})

hl.window_rule({
  name = "satty",
  match = {
    class = "com.gabm.satty"
},
  size = {1000,700},
  float = true,
})
