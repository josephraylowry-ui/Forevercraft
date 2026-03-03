# Wise Wanderer — Close Floating GUI
# Kill all WW.MenuElement entities and remove player tag
# Runs as the player (from tick distance check) — @s is always the player

# Kill all GUI entities near the anchor (if anchor still exists)
execute as @e[type=minecraft:marker,tag=WW.MenuAnchor,distance=..10] at @s run kill @e[tag=WW.MenuElement,distance=..5]

# Remove player tag — @s is the player from tick context
tag @s remove WW.InMenu

# Sound
playsound minecraft:block.amethyst_block.break master @s ~ ~ ~ 0.5 0.8
