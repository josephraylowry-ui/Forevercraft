# Breeze Pet Passive Abilities
# - Wind Rush: Movement speed + jump strength scaling
# - Wind Shield: Wind charge knockback immunity

data modify storage evercraft:companions math.string set string entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"level"}].value
scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int

tag @s add Pets.Breeze

# Movement speed scaling based on level (without return)
execute if score #value Pets.Calc matches 1..7 run attribute @s movement_speed base set 0.102
execute if score #value Pets.Calc matches 8..12 run attribute @s movement_speed base set 0.106
execute if score #value Pets.Calc matches 13..17 run attribute @s movement_speed base set 0.11
execute if score #value Pets.Calc matches 18..22 run attribute @s movement_speed base set 0.114
execute if score #value Pets.Calc matches 23..27 run attribute @s movement_speed base set 0.118
execute if score #value Pets.Calc matches 28..32 run attribute @s movement_speed base set 0.122
execute if score #value Pets.Calc matches 33..37 run attribute @s movement_speed base set 0.126
execute if score #value Pets.Calc matches 38..42 run attribute @s movement_speed base set 0.13
execute if score #value Pets.Calc matches 43..47 run attribute @s movement_speed base set 0.134
execute if score #value Pets.Calc matches 48..52 run attribute @s movement_speed base set 0.138
execute if score #value Pets.Calc matches 53..57 run attribute @s movement_speed base set 0.142
execute if score #value Pets.Calc matches 58..62 run attribute @s movement_speed base set 0.146
execute if score #value Pets.Calc matches 63..67 run attribute @s movement_speed base set 0.15
execute if score #value Pets.Calc matches 68..72 run attribute @s movement_speed base set 0.154
execute if score #value Pets.Calc matches 73..77 run attribute @s movement_speed base set 0.158
execute if score #value Pets.Calc matches 78..82 run attribute @s movement_speed base set 0.162
execute if score #value Pets.Calc matches 83..87 run attribute @s movement_speed base set 0.166
execute if score #value Pets.Calc matches 88..92 run attribute @s movement_speed base set 0.17
execute if score #value Pets.Calc matches 93..97 run attribute @s movement_speed base set 0.175
execute if score #value Pets.Calc matches 98..100 run attribute @s movement_speed base set 0.18

# Jump strength scaling based on level (with return)
execute if score #value Pets.Calc matches 1..7 run attribute @s jump_strength base set 0.43
execute if score #value Pets.Calc matches 8..12 run attribute @s jump_strength base set 0.444
execute if score #value Pets.Calc matches 13..17 run attribute @s jump_strength base set 0.458
execute if score #value Pets.Calc matches 18..22 run attribute @s jump_strength base set 0.472
execute if score #value Pets.Calc matches 23..27 run attribute @s jump_strength base set 0.486
execute if score #value Pets.Calc matches 28..32 run attribute @s jump_strength base set 0.5
execute if score #value Pets.Calc matches 33..37 run attribute @s jump_strength base set 0.514
execute if score #value Pets.Calc matches 38..42 run attribute @s jump_strength base set 0.528
execute if score #value Pets.Calc matches 43..47 run attribute @s jump_strength base set 0.542
execute if score #value Pets.Calc matches 48..52 run attribute @s jump_strength base set 0.556
execute if score #value Pets.Calc matches 53..57 run attribute @s jump_strength base set 0.57
execute if score #value Pets.Calc matches 58..62 run attribute @s jump_strength base set 0.584
execute if score #value Pets.Calc matches 63..67 run attribute @s jump_strength base set 0.598
execute if score #value Pets.Calc matches 68..72 run attribute @s jump_strength base set 0.612
execute if score #value Pets.Calc matches 73..77 run attribute @s jump_strength base set 0.626
execute if score #value Pets.Calc matches 78..82 run attribute @s jump_strength base set 0.64
execute if score #value Pets.Calc matches 83..87 run attribute @s jump_strength base set 0.654
execute if score #value Pets.Calc matches 88..92 run attribute @s jump_strength base set 0.668
execute if score #value Pets.Calc matches 93..97 run attribute @s jump_strength base set 0.684
execute if score #value Pets.Calc matches 98..100 run attribute @s jump_strength base set 0.7
