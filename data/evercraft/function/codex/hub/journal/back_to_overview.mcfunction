# Journal — Back to Overview
# Kills sub-page content and returns to overview
# Run as the player, at player, facing the anchor

# Kill sub-page content
kill @e[type=text_display,tag=Adv.JnSubPage,distance=..7]
kill @e[type=interaction,tag=Adv.JnSubPage,distance=..7]

# Reset to overview page
scoreboard players set @s adv.gui_page 1

# Update title
data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..7,limit=1] text set value {text:"\u2726 Travel Journal \u2726",color:"dark_aqua",bold:true}

# Respawn overview
function evercraft:codex/hub/journal/spawn_overview

# Play sound
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
