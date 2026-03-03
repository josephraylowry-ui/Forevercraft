# Exit respec mode — cleanup overlay, restore page 1
# Run as/at the player, facing the anchor

# Kill all respec overlay entities
kill @e[type=text_display,tag=Adv.RespecOverlay,distance=..7]
kill @e[type=interaction,tag=Adv.RespecOverlay,distance=..7]

# Remove respec mode tag
tag @s remove Adv.RespecMode

# Restore title
data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..7,limit=1] text set value {text:"\u2726 Advantage Trees \u2726",color:"gold",bold:true}

# Respawn page 1 content (includes refresh)
function evercraft:advantage/gui/spawn_trees

# Return sound
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
