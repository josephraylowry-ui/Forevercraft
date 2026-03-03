# Enchanted Monocle - Activate Mob Glow
# Called when player uses spyglass while holding Enchanted Monocle
# Makes all mobs within 24 blocks glow for 10 seconds

# Revoke advancement so it can trigger again
advancement revoke @s only evercraft:artifacts/abilities/mob_glow_trigger

# Check cooldown (30 seconds)
execute if score @s ec.monocle_cd matches 1.. run return run tellraw @s {text:"Monocle on cooldown!",color:"red"}

# Apply glowing to all mobs within 24 blocks
effect give @e[type=!player,type=!item,type=!experience_orb,type=!armor_stand,distance=..24] glowing 10 0 true

# Visual and audio feedback
particle witch ~ ~1 ~ 0.5 0.5 0.5 0.1 20
playsound minecraft:block.amethyst_block.chime player @s ~ ~ ~ 1.0 1.5
title @s actionbar {text:"All mobs revealed!",color:"gold"}

# Set cooldown (30 seconds = 600 ticks)
scoreboard players set @s ec.monocle_cd 600
