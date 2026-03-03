# ============================================================
# Campfire Kitchen GUI — Close
# Runs as the player
# Kills all CK entities and removes menu tag
# ============================================================

# Remove menu tag
tag @s remove CK.InMenu

# Kill all menu entities within range
execute at @s run kill @e[type=text_display,tag=CK.MenuEl,distance=..7]
execute at @s run kill @e[type=interaction,tag=CK.MenuEl,distance=..7]
execute at @s run kill @e[type=marker,tag=CK.MenuEl,distance=..7]

# Sound
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 0.8
