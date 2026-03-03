# Vex Pet Passive Abilities
# - Spectral Flight: Movement speed + reduced gravity dual scaling
# - Phase: Walk through cobwebs without slowdown (tag trigger)

data modify storage evercraft:companions math.string set string entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"level"}].value
scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int

# Spectral Flight - Movement speed (0.102 to 0.19)
execute if score #value Pets.Calc matches 1..7 run attribute @s movement_speed base set 0.102
execute if score #value Pets.Calc matches 8..12 run attribute @s movement_speed base set 0.107
execute if score #value Pets.Calc matches 13..17 run attribute @s movement_speed base set 0.111
execute if score #value Pets.Calc matches 18..22 run attribute @s movement_speed base set 0.116
execute if score #value Pets.Calc matches 23..27 run attribute @s movement_speed base set 0.12
execute if score #value Pets.Calc matches 28..32 run attribute @s movement_speed base set 0.125
execute if score #value Pets.Calc matches 33..37 run attribute @s movement_speed base set 0.13
execute if score #value Pets.Calc matches 38..42 run attribute @s movement_speed base set 0.134
execute if score #value Pets.Calc matches 43..47 run attribute @s movement_speed base set 0.139
execute if score #value Pets.Calc matches 48..52 run attribute @s movement_speed base set 0.143
execute if score #value Pets.Calc matches 53..57 run attribute @s movement_speed base set 0.148
execute if score #value Pets.Calc matches 58..62 run attribute @s movement_speed base set 0.153
execute if score #value Pets.Calc matches 63..67 run attribute @s movement_speed base set 0.157
execute if score #value Pets.Calc matches 68..72 run attribute @s movement_speed base set 0.162
execute if score #value Pets.Calc matches 73..77 run attribute @s movement_speed base set 0.166
execute if score #value Pets.Calc matches 78..82 run attribute @s movement_speed base set 0.171
execute if score #value Pets.Calc matches 83..87 run attribute @s movement_speed base set 0.176
execute if score #value Pets.Calc matches 88..92 run attribute @s movement_speed base set 0.18
execute if score #value Pets.Calc matches 93..97 run attribute @s movement_speed base set 0.185
execute if score #value Pets.Calc matches 98..100 run attribute @s movement_speed base set 0.19

# Spectral Flight - Reduced gravity (0.08 to 0.04)
execute if score #value Pets.Calc matches 1..7 run return run attribute @s gravity base set 0.08
execute if score #value Pets.Calc matches 8..12 run return run attribute @s gravity base set 0.078
execute if score #value Pets.Calc matches 13..17 run return run attribute @s gravity base set 0.076
execute if score #value Pets.Calc matches 18..22 run return run attribute @s gravity base set 0.074
execute if score #value Pets.Calc matches 23..27 run return run attribute @s gravity base set 0.072
execute if score #value Pets.Calc matches 28..32 run return run attribute @s gravity base set 0.07
execute if score #value Pets.Calc matches 33..37 run return run attribute @s gravity base set 0.068
execute if score #value Pets.Calc matches 38..42 run return run attribute @s gravity base set 0.066
execute if score #value Pets.Calc matches 43..47 run return run attribute @s gravity base set 0.064
execute if score #value Pets.Calc matches 48..52 run return run attribute @s gravity base set 0.062
execute if score #value Pets.Calc matches 53..57 run return run attribute @s gravity base set 0.06
execute if score #value Pets.Calc matches 58..62 run return run attribute @s gravity base set 0.058
execute if score #value Pets.Calc matches 63..67 run return run attribute @s gravity base set 0.056
execute if score #value Pets.Calc matches 68..72 run return run attribute @s gravity base set 0.054
execute if score #value Pets.Calc matches 73..77 run return run attribute @s gravity base set 0.052
execute if score #value Pets.Calc matches 78..82 run return run attribute @s gravity base set 0.05
execute if score #value Pets.Calc matches 83..87 run return run attribute @s gravity base set 0.048
execute if score #value Pets.Calc matches 88..92 run return run attribute @s gravity base set 0.046
execute if score #value Pets.Calc matches 93..97 run return run attribute @s gravity base set 0.043
execute if score #value Pets.Calc matches 98..100 run return run attribute @s gravity base set 0.04
