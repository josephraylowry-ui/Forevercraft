# Mossy Skeleton Pet Passive Abilities
# - Ancient Knowledge: Mining efficiency scaling
# - Overgrown Camouflage: Bogged mobs don't attack (tag trigger)

data modify storage evercraft:companions math.string set string entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"level"}].value
scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int

tag @s add Pets.Mossy_Skeleton

# Mining efficiency scaling
execute if score #value Pets.Calc matches 1..7 run return run attribute @s block_interaction_range base set 0.25
execute if score #value Pets.Calc matches 8..12 run return run attribute @s block_interaction_range base set 0.5
execute if score #value Pets.Calc matches 13..17 run return run attribute @s block_interaction_range base set 0.75
execute if score #value Pets.Calc matches 18..22 run return run attribute @s block_interaction_range base set 1.0
execute if score #value Pets.Calc matches 23..27 run return run attribute @s block_interaction_range base set 1.25
execute if score #value Pets.Calc matches 28..32 run return run attribute @s block_interaction_range base set 1.5
execute if score #value Pets.Calc matches 33..37 run return run attribute @s block_interaction_range base set 1.75
execute if score #value Pets.Calc matches 38..42 run return run attribute @s block_interaction_range base set 2.0
execute if score #value Pets.Calc matches 43..47 run return run attribute @s block_interaction_range base set 2.25
execute if score #value Pets.Calc matches 48..52 run return run attribute @s block_interaction_range base set 2.5
execute if score #value Pets.Calc matches 53..57 run return run attribute @s block_interaction_range base set 2.75
execute if score #value Pets.Calc matches 58..62 run return run attribute @s block_interaction_range base set 3.0
execute if score #value Pets.Calc matches 63..67 run return run attribute @s block_interaction_range base set 3.25
execute if score #value Pets.Calc matches 68..72 run return run attribute @s block_interaction_range base set 3.5
execute if score #value Pets.Calc matches 73..77 run return run attribute @s block_interaction_range base set 3.75
execute if score #value Pets.Calc matches 78..82 run return run attribute @s block_interaction_range base set 4.0
execute if score #value Pets.Calc matches 83..87 run return run attribute @s block_interaction_range base set 4.25
execute if score #value Pets.Calc matches 88..92 run return run attribute @s block_interaction_range base set 4.5
execute if score #value Pets.Calc matches 93..97 run return run attribute @s block_interaction_range base set 4.75
execute if score #value Pets.Calc matches 98..100 run return run attribute @s block_interaction_range base set 5.0
