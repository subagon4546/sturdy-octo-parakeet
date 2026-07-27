-------------------
---- AUTOSTART ----
-------------------

-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

-- Autostart necessary processes (like notifications daemons, status bars, etc.)
-- Or execute your favorite apps at launch like this:

 hl.on("hyprland.start", function ()
   hl.exec_cmd("nm-applet")
   hl.exec_cmd("waybar")
   hl.exec_cmd("[workspace 19 silent] spotify")
   hl.exec_cmd("waypaper --restore")
   hl.exec_cmd("[workspace 12 silent] kitty")
   hl.exec_cmd("[workspace 17 silent] Discord")
   hl.exec_cmd("[workspace 2 silent] kitty")
   hl.exec_cmd("[workspace 17 silent] discord")
   hl.exec_cmd("[workspace 13 silent] elecwhat")
   hl.exec_cmd("[workspace 8 silent] firefox")
   hl.exec_cmd("elephant")
   hl.exec_cmd("walker --gapplication-service")
   hl.exec_cmd("swaync")
   hl.exec_cmd("killall waybar && waybar &")
   hl.exec_cmd('notify-send "Welcome aboard, captain" "All systems online" --hint=string:image-path:/home/subagon/Pictures/Pictures/Subnautica/Cyclops.png')
   hl.exec_cmd("~/Documents/scripts/startupwall.sh")
 end)
