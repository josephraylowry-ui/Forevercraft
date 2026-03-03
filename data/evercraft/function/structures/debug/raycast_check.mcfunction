# Debug raycast to find chest (max 16 blocks, 80 steps at 0.2)
scoreboard players add @s cf.temp 1

# Check current position
execute if block ~ ~ ~ minecraft:chest run tellraw @s [{text:"Found CHEST at ",color:"green"},{text:"~ ~ ~",color:"aqua"}]
execute if block ~ ~ ~ minecraft:trapped_chest run tellraw @s [{text:"Found TRAPPED CHEST at ",color:"green"},{text:"~ ~ ~",color:"aqua"}]

# Check for chest and run detailed debug
execute if block ~ ~ ~ minecraft:chest align xyz positioned ~0.5 ~0.5 ~0.5 run function evercraft:structures/debug/check_chest_data
execute if block ~ ~ ~ minecraft:trapped_chest align xyz positioned ~0.5 ~0.5 ~0.5 run function evercraft:structures/debug/check_chest_data

# Continue raycast
execute if score @s cf.temp matches ..80 unless block ~ ~ ~ minecraft:chest unless block ~ ~ ~ minecraft:trapped_chest positioned ^ ^ ^0.2 run function evercraft:structures/debug/raycast_check

# Reset and report if nothing found
execute if score @s cf.temp matches 81.. run tellraw @s {text:"No chest found in raycast (80 steps)",color:"red"}
execute if score @s cf.temp matches 81.. run scoreboard players set @s cf.temp 0
