# ============================================================
# Hearthstone GUI — Close
# Run as: player
# ============================================================

execute unless entity @s[tag=HS.InMenu] run return 0

# Kill all menu elements near the player
kill @e[type=item_display,tag=HS.MenuEl,distance=..7]
kill @e[type=text_display,tag=HS.MenuEl,distance=..7]
kill @e[type=interaction,tag=HS.MenuEl,distance=..7]

# Remove tag
tag @s remove HS.InMenu

# Sound
playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 0.3 0.8
