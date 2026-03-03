# Biome Pet Roll - Common Tier
# Uses macro dispatch (OPT-9, Session 11) — replaced 24 conditional branches

function evercraft:biome/detect

# Fallback for unknown biome - use original unweighted pool
execute if score @s ec.biome_id matches -1 run loot give @s loot evercraft:pets/common
execute if score @s ec.biome_id matches -1 run return 0

# Store biome_id and rarity to data storage for macro, then dispatch
execute store result storage evercraft:temp biome_id int 1.0 run scoreboard players get @s ec.biome_id
data modify storage evercraft:temp rarity set value "common"
function evercraft:biome/pet_roll/roll_macro with storage evercraft:temp
