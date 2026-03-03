# Seer's Compass - Activate Mob Radar
# Makes hostile mobs glow within 16 blocks

# Check cooldown (30 seconds)
execute if score @s ec.compass_cd matches 1.. run return 0

# Apply glowing to hostile mobs within 16 blocks
effect give @e[type=#evercraft:hostile_mobs,distance=..16] glowing 10 0 true

# Visual and audio feedback
particle witch ~ ~1 ~ 0.5 0.5 0.5 0.1 15
playsound minecraft:block.amethyst_block.resonate player @s ~ ~ ~ 1.0 0.8
title @s actionbar {text:"Hostiles revealed!",color:"red"}

# Set cooldown (30 seconds = 600 ticks)
scoreboard players set @s ec.compass_cd 600
