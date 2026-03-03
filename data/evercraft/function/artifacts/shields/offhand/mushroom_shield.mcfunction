# Mushroom Shield — "Spore Cloud"
# Poison 1 to enemies within 4 blocks for 5s + Regen 1 to self for 4s, 25s CD

# AoE poison to nearby mobs
execute at @s as @e[type=!player,type=!item,distance=..4,limit=8,sort=nearest] run effect give @s poison 5 0 false

# Regen to self
effect give @s regeneration 4 0 false

# Particles + sound
execute at @s run particle mycelium ~ ~0.5 ~ 1.2 0.5 1.2 0.1 25
execute at @s run particle item{item:"red_mushroom"} ~ ~1 ~ 0.8 0.4 0.8 0.05 8
execute at @s run playsound minecraft:block.fungus.place master @a ~ ~ ~ 0.9 0.7
execute at @s run playsound minecraft:item.shield.block master @s ~ ~ ~ 0.5 1.0

# Set cooldown
scoreboard players set @s ec.tk_off_cd 25

# Actionbar feedback
title @s actionbar {"text":"Spore Cloud!","color":"dark_red","bold":true}
