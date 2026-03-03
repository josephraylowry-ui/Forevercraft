# Lore — Back to Dimension Picker
# Kills current page and returns to dimension picker
# Run as the player, at player, facing the anchor

# Kill all current lore sub-content
kill @e[type=text_display,tag=Adv.LoreSubPick,distance=..7]
kill @e[type=interaction,tag=Adv.LoreSubPick,distance=..7]
kill @e[type=text_display,tag=Adv.LoreSetList,distance=..7]
kill @e[type=interaction,tag=Adv.LoreSetList,distance=..7]

# Reset to page 1
scoreboard players set @s adv.gui_page 1

# Update title
data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..7,limit=1] text set value {text:"\u2726 Lore Discovery \u2726",color:"yellow",bold:true}

# Respawn dimension picker
function evercraft:codex/hub/lore/spawn

# Play sound
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
