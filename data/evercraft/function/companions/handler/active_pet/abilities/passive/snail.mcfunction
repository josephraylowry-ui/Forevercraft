# Shade Pet Passive Abilities
# - Shadow Step: Sneaking speed scaling

data modify storage evercraft:companions math.string set string entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"level"}].value

scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int

execute if score #value Pets.Calc matches 1..7 run return run attribute @s sneaking_speed base set 0.335
execute if score #value Pets.Calc matches 8..12 run return run attribute @s sneaking_speed base set 0.37
execute if score #value Pets.Calc matches 13..17 run return run attribute @s sneaking_speed base set 0.405
execute if score #value Pets.Calc matches 18..22 run return run attribute @s sneaking_speed base set 0.44
execute if score #value Pets.Calc matches 23..27 run return run attribute @s sneaking_speed base set 0.475
execute if score #value Pets.Calc matches 28..32 run return run attribute @s sneaking_speed base set 0.51
execute if score #value Pets.Calc matches 33..37 run return run attribute @s sneaking_speed base set 0.545
execute if score #value Pets.Calc matches 38..42 run return run attribute @s sneaking_speed base set 0.58
execute if score #value Pets.Calc matches 43..47 run return run attribute @s sneaking_speed base set 0.615
execute if score #value Pets.Calc matches 48..52 run return run attribute @s sneaking_speed base set 0.65
execute if score #value Pets.Calc matches 53..57 run return run attribute @s sneaking_speed base set 0.685
execute if score #value Pets.Calc matches 58..62 run return run attribute @s sneaking_speed base set 0.72
execute if score #value Pets.Calc matches 63..67 run return run attribute @s sneaking_speed base set 0.755
execute if score #value Pets.Calc matches 68..72 run return run attribute @s sneaking_speed base set 0.79
execute if score #value Pets.Calc matches 73..77 run return run attribute @s sneaking_speed base set 0.825
execute if score #value Pets.Calc matches 78..82 run return run attribute @s sneaking_speed base set 0.86
execute if score #value Pets.Calc matches 83..87 run return run attribute @s sneaking_speed base set 0.895
execute if score #value Pets.Calc matches 88..92 run return run attribute @s sneaking_speed base set 0.93
execute if score #value Pets.Calc matches 93..97 run return run attribute @s sneaking_speed base set 0.965
execute if score #value Pets.Calc matches 98..100 run return run attribute @s sneaking_speed base set 1.0