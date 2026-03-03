# Companion Memories — Count Memories for Active Pet
# Sets #mem_count Pets.Calc = number of memories (0-10)
# Run as: player with active pet

execute unless entity @s[tag=Pets.ActivePet] run return run scoreboard players set #mem_count Pets.Calc 0

scoreboard players operation #Search Pets.ID = @s Pets.ID

# Read bitfield (initialize if missing)
execute unless data entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"memories"}] run return run scoreboard players set #mem_count Pets.Calc 0

data modify storage evercraft:companions math.string set string entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"memories"}].value
scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int
scoreboard players operation #mem_bits Pets.Calc = #value Pets.Calc

# Population count — check each bit
scoreboard players set #mem_count Pets.Calc 0

scoreboard players operation #check Pets.Calc = #mem_bits Pets.Calc
scoreboard players operation #check Pets.Calc /= #mem_b0 Pets.Calc
scoreboard players operation #check Pets.Calc %= #2 Pets.Calc
execute if score #check Pets.Calc matches 1 run scoreboard players add #mem_count Pets.Calc 1

scoreboard players operation #check Pets.Calc = #mem_bits Pets.Calc
scoreboard players operation #check Pets.Calc /= #mem_b1 Pets.Calc
scoreboard players operation #check Pets.Calc %= #2 Pets.Calc
execute if score #check Pets.Calc matches 1 run scoreboard players add #mem_count Pets.Calc 1

scoreboard players operation #check Pets.Calc = #mem_bits Pets.Calc
scoreboard players operation #check Pets.Calc /= #mem_b2 Pets.Calc
scoreboard players operation #check Pets.Calc %= #2 Pets.Calc
execute if score #check Pets.Calc matches 1 run scoreboard players add #mem_count Pets.Calc 1

scoreboard players operation #check Pets.Calc = #mem_bits Pets.Calc
scoreboard players operation #check Pets.Calc /= #mem_b3 Pets.Calc
scoreboard players operation #check Pets.Calc %= #2 Pets.Calc
execute if score #check Pets.Calc matches 1 run scoreboard players add #mem_count Pets.Calc 1

scoreboard players operation #check Pets.Calc = #mem_bits Pets.Calc
scoreboard players operation #check Pets.Calc /= #mem_b4 Pets.Calc
scoreboard players operation #check Pets.Calc %= #2 Pets.Calc
execute if score #check Pets.Calc matches 1 run scoreboard players add #mem_count Pets.Calc 1

scoreboard players operation #check Pets.Calc = #mem_bits Pets.Calc
scoreboard players operation #check Pets.Calc /= #mem_b5 Pets.Calc
scoreboard players operation #check Pets.Calc %= #2 Pets.Calc
execute if score #check Pets.Calc matches 1 run scoreboard players add #mem_count Pets.Calc 1

scoreboard players operation #check Pets.Calc = #mem_bits Pets.Calc
scoreboard players operation #check Pets.Calc /= #mem_b6 Pets.Calc
scoreboard players operation #check Pets.Calc %= #2 Pets.Calc
execute if score #check Pets.Calc matches 1 run scoreboard players add #mem_count Pets.Calc 1

scoreboard players operation #check Pets.Calc = #mem_bits Pets.Calc
scoreboard players operation #check Pets.Calc /= #mem_b7 Pets.Calc
scoreboard players operation #check Pets.Calc %= #2 Pets.Calc
execute if score #check Pets.Calc matches 1 run scoreboard players add #mem_count Pets.Calc 1

scoreboard players operation #check Pets.Calc = #mem_bits Pets.Calc
scoreboard players operation #check Pets.Calc /= #mem_b8 Pets.Calc
scoreboard players operation #check Pets.Calc %= #2 Pets.Calc
execute if score #check Pets.Calc matches 1 run scoreboard players add #mem_count Pets.Calc 1

scoreboard players operation #check Pets.Calc = #mem_bits Pets.Calc
scoreboard players operation #check Pets.Calc /= #mem_b9 Pets.Calc
scoreboard players operation #check Pets.Calc %= #2 Pets.Calc
execute if score #check Pets.Calc matches 1 run scoreboard players add #mem_count Pets.Calc 1

# Store in per-player scoreboard for easy access
scoreboard players operation @s ec.pet_mem = #mem_count Pets.Calc
