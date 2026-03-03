# Giraffe Pet Passive Abilities
# - Long Neck: Block interaction range scaling
# - Tall View: See entity names from further away (tag trigger)

data modify storage evercraft:companions math.string set string entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"level"}].value
scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int

# Long Neck - Block interaction range (4.6 to 7.0)
execute if score #value Pets.Calc matches 1..7 run return run attribute @s block_interaction_range base set 4.6
execute if score #value Pets.Calc matches 8..12 run return run attribute @s block_interaction_range base set 4.726
execute if score #value Pets.Calc matches 13..17 run return run attribute @s block_interaction_range base set 4.853
execute if score #value Pets.Calc matches 18..22 run return run attribute @s block_interaction_range base set 4.979
execute if score #value Pets.Calc matches 23..27 run return run attribute @s block_interaction_range base set 5.105
execute if score #value Pets.Calc matches 28..32 run return run attribute @s block_interaction_range base set 5.232
execute if score #value Pets.Calc matches 33..37 run return run attribute @s block_interaction_range base set 5.358
execute if score #value Pets.Calc matches 38..42 run return run attribute @s block_interaction_range base set 5.484
execute if score #value Pets.Calc matches 43..47 run return run attribute @s block_interaction_range base set 5.611
execute if score #value Pets.Calc matches 48..52 run return run attribute @s block_interaction_range base set 5.737
execute if score #value Pets.Calc matches 53..57 run return run attribute @s block_interaction_range base set 5.863
execute if score #value Pets.Calc matches 58..62 run return run attribute @s block_interaction_range base set 5.99
execute if score #value Pets.Calc matches 63..67 run return run attribute @s block_interaction_range base set 6.116
execute if score #value Pets.Calc matches 68..72 run return run attribute @s block_interaction_range base set 6.242
execute if score #value Pets.Calc matches 73..77 run return run attribute @s block_interaction_range base set 6.368
execute if score #value Pets.Calc matches 78..82 run return run attribute @s block_interaction_range base set 6.495
execute if score #value Pets.Calc matches 83..87 run return run attribute @s block_interaction_range base set 6.621
execute if score #value Pets.Calc matches 88..92 run return run attribute @s block_interaction_range base set 6.747
execute if score #value Pets.Calc matches 93..97 run return run attribute @s block_interaction_range base set 6.874
execute if score #value Pets.Calc matches 98..100 run return run attribute @s block_interaction_range base set 7.0
