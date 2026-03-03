# Void Walker Pet Passive Abilities
# - Phase Shift: Slow Falling + movement speed boost
# - Void Touched: Extra speed in End dimension
# - Dimensional Tear: Tag for teleport damage trigger

data modify storage evercraft:companions math.string set string entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"level"}].value
scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int

tag @s add Pets.Void_Walker

# Phase Shift - Slow Falling (permanent)
effect give @s slow_falling infinite 0 true

# Void Touched - Extra speed boost in End dimension
execute if dimension the_end if score #value Pets.Calc matches 1..7 run effect give @s speed 5 1 true
execute if dimension the_end if score #value Pets.Calc matches 8..22 run effect give @s speed 5 2 true
execute if dimension the_end if score #value Pets.Calc matches 23..47 run effect give @s speed 5 3 true
execute if dimension the_end if score #value Pets.Calc matches 48..72 run effect give @s speed 5 4 true
execute if dimension the_end if score #value Pets.Calc matches 73..100 run effect give @s speed 5 5 true

# Phase Shift - Movement speed scaling (0.105 to 0.2)
execute if score #value Pets.Calc matches 1..7 run return run attribute @s movement_speed base set 0.105
execute if score #value Pets.Calc matches 8..12 run return run attribute @s movement_speed base set 0.11
execute if score #value Pets.Calc matches 13..17 run return run attribute @s movement_speed base set 0.115
execute if score #value Pets.Calc matches 18..22 run return run attribute @s movement_speed base set 0.12
execute if score #value Pets.Calc matches 23..27 run return run attribute @s movement_speed base set 0.125
execute if score #value Pets.Calc matches 28..32 run return run attribute @s movement_speed base set 0.13
execute if score #value Pets.Calc matches 33..37 run return run attribute @s movement_speed base set 0.14
execute if score #value Pets.Calc matches 38..42 run return run attribute @s movement_speed base set 0.15
execute if score #value Pets.Calc matches 43..47 run return run attribute @s movement_speed base set 0.155
execute if score #value Pets.Calc matches 48..52 run return run attribute @s movement_speed base set 0.16
execute if score #value Pets.Calc matches 53..57 run return run attribute @s movement_speed base set 0.165
execute if score #value Pets.Calc matches 58..62 run return run attribute @s movement_speed base set 0.17
execute if score #value Pets.Calc matches 63..67 run return run attribute @s movement_speed base set 0.175
execute if score #value Pets.Calc matches 68..72 run return run attribute @s movement_speed base set 0.18
execute if score #value Pets.Calc matches 73..77 run return run attribute @s movement_speed base set 0.185
execute if score #value Pets.Calc matches 78..82 run return run attribute @s movement_speed base set 0.19
execute if score #value Pets.Calc matches 83..87 run return run attribute @s movement_speed base set 0.192
execute if score #value Pets.Calc matches 88..92 run return run attribute @s movement_speed base set 0.195
execute if score #value Pets.Calc matches 93..97 run return run attribute @s movement_speed base set 0.198
execute if score #value Pets.Calc matches 98..100 run return run attribute @s movement_speed base set 0.2
