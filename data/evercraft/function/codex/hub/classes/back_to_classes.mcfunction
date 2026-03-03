# Classes — Back to Class List
# Kills artifact list content and respawns the class list
# Run as the player, at player, facing the anchor

# Kill artifact list content (page 2)
kill @e[type=text_display,tag=Adv.ClsPage2,distance=..7]
kill @e[type=interaction,tag=Adv.ClsPage2,distance=..7]

# Return to page 1
scoreboard players set @s adv.gui_page 1

# Respawn class list
function evercraft:codex/hub/classes/spawn

# Play click sound
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
