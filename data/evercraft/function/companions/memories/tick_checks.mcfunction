# Companion Memories — Periodic Checks (every 5 seconds)
# Checks biome change, depth, and dimension for active pet owners
# Run as: player at player position

execute unless entity @s[tag=Pets.ActivePet] run return 0

# --- Biome Change Detection ---
# Compare current biome to previous; if different, trigger memory
function evercraft:biome/detect
execute unless score @s ec.biome_id = @s ec.pet_biome_prev run function evercraft:companions/memories/on_biome_change
scoreboard players operation @s ec.pet_biome_prev = @s ec.biome_id

# --- Depth Check (Y < -48) ---
execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"location":{"position":{"y":{"max":-48}}}}} run function evercraft:companions/memories/on_depth

# --- Dimension Check (Nether or End) ---
execute if dimension minecraft:the_nether run function evercraft:companions/memories/on_dimension
execute if dimension minecraft:the_end run function evercraft:companions/memories/on_dimension
