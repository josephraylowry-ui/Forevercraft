# Camel Pet Passive Abilities
# - Desert Stride: Step height scaling
# - Desert Endurance: No hunger drain in desert (tag trigger)

data modify storage evercraft:companions math.string set string entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"level"}].value
scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int

tag @s add Pets.Camel

# Step height scaling
execute if score #value Pets.Calc matches 1..7 run return run attribute @s step_height base set 0.645
execute if score #value Pets.Calc matches 8..12 run return run attribute @s step_height base set 0.716
execute if score #value Pets.Calc matches 13..17 run return run attribute @s step_height base set 0.787
execute if score #value Pets.Calc matches 18..22 run return run attribute @s step_height base set 0.858
execute if score #value Pets.Calc matches 23..27 run return run attribute @s step_height base set 0.929
execute if score #value Pets.Calc matches 28..32 run return run attribute @s step_height base set 1.0
execute if score #value Pets.Calc matches 33..37 run return run attribute @s step_height base set 1.071
execute if score #value Pets.Calc matches 38..42 run return run attribute @s step_height base set 1.142
execute if score #value Pets.Calc matches 43..47 run return run attribute @s step_height base set 1.213
execute if score #value Pets.Calc matches 48..52 run return run attribute @s step_height base set 1.284
execute if score #value Pets.Calc matches 53..57 run return run attribute @s step_height base set 1.355
execute if score #value Pets.Calc matches 58..62 run return run attribute @s step_height base set 1.426
execute if score #value Pets.Calc matches 63..67 run return run attribute @s step_height base set 1.5
execute if score #value Pets.Calc matches 68..72 run return run attribute @s step_height base set 1.571
execute if score #value Pets.Calc matches 73..77 run return run attribute @s step_height base set 1.642
execute if score #value Pets.Calc matches 78..82 run return run attribute @s step_height base set 1.713
execute if score #value Pets.Calc matches 83..87 run return run attribute @s step_height base set 1.784
execute if score #value Pets.Calc matches 88..92 run return run attribute @s step_height base set 1.855
execute if score #value Pets.Calc matches 93..97 run return run attribute @s step_height base set 1.928
execute if score #value Pets.Calc matches 98..100 run return run attribute @s step_height base set 2.0
