# Grasshopper Pet Passive Abilities
# - Spring Legs: Jump strength + safe fall distance

data modify storage evercraft:companions math.string set string entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"level"}].value

scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int
attribute @s safe_fall_distance base set 10

execute if score #value Pets.Calc matches 1..7 run return run attribute @s jump_strength base set 0.4316
execute if score #value Pets.Calc matches 8..12 run return run attribute @s jump_strength base set 0.4632
execute if score #value Pets.Calc matches 13..17 run return run attribute @s jump_strength base set 0.4947
execute if score #value Pets.Calc matches 18..22 run return run attribute @s jump_strength base set 0.5263
execute if score #value Pets.Calc matches 23..27 run return run attribute @s jump_strength base set 0.5579
execute if score #value Pets.Calc matches 28..32 run return run attribute @s jump_strength base set 0.5895
execute if score #value Pets.Calc matches 33..37 run return run attribute @s jump_strength base set 0.6211
execute if score #value Pets.Calc matches 38..42 run return run attribute @s jump_strength base set 0.6526
execute if score #value Pets.Calc matches 43..47 run return run attribute @s jump_strength base set 0.6842
execute if score #value Pets.Calc matches 48..52 run return run attribute @s jump_strength base set 0.7158
execute if score #value Pets.Calc matches 53..57 run return run attribute @s jump_strength base set 0.7474
execute if score #value Pets.Calc matches 58..62 run return run attribute @s jump_strength base set 0.7790
execute if score #value Pets.Calc matches 63..67 run return run attribute @s jump_strength base set 0.8105
execute if score #value Pets.Calc matches 68..72 run return run attribute @s jump_strength base set 0.8421
execute if score #value Pets.Calc matches 73..77 run return run attribute @s jump_strength base set 0.8737
execute if score #value Pets.Calc matches 78..82 run return run attribute @s jump_strength base set 0.9053
execute if score #value Pets.Calc matches 83..87 run return run attribute @s jump_strength base set 0.9368
execute if score #value Pets.Calc matches 88..92 run return run attribute @s jump_strength base set 0.9684
execute if score #value Pets.Calc matches 93..97 run return run attribute @s jump_strength base set 1.0000
execute if score #value Pets.Calc matches 98..100 run return run attribute @s jump_strength base set 1.0100