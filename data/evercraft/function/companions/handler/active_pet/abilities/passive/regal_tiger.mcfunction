# Regal Tiger Pet Passive Abilities
# - Apex Predator: Movement speed + attack speed dual scaling
# - Bleeding Strikes: Sweeping attacks apply bleeding DOT (tag trigger)

data modify storage evercraft:companions math.string set string entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"level"}].value
scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int

attribute @s sweeping_damage_ratio base set 1.0

execute if score #value Pets.Calc matches 1..7 run attribute @s movement_speed base set 0.102
execute if score #value Pets.Calc matches 1..7 run attribute @s attack_speed base set 4.1
execute if score #value Pets.Calc matches 8..12 run attribute @s movement_speed base set 0.108
execute if score #value Pets.Calc matches 8..12 run attribute @s attack_speed base set 4.253
execute if score #value Pets.Calc matches 13..17 run attribute @s movement_speed base set 0.114
execute if score #value Pets.Calc matches 13..17 run attribute @s attack_speed base set 4.405
execute if score #value Pets.Calc matches 18..22 run attribute @s movement_speed base set 0.12
execute if score #value Pets.Calc matches 18..22 run attribute @s attack_speed base set 4.558
execute if score #value Pets.Calc matches 23..27 run attribute @s movement_speed base set 0.126
execute if score #value Pets.Calc matches 23..27 run attribute @s attack_speed base set 4.711
execute if score #value Pets.Calc matches 28..32 run attribute @s movement_speed base set 0.132
execute if score #value Pets.Calc matches 28..32 run attribute @s attack_speed base set 4.863
execute if score #value Pets.Calc matches 33..37 run attribute @s movement_speed base set 0.138
execute if score #value Pets.Calc matches 33..37 run attribute @s attack_speed base set 5.016
execute if score #value Pets.Calc matches 38..42 run attribute @s movement_speed base set 0.144
execute if score #value Pets.Calc matches 38..42 run attribute @s attack_speed base set 5.168
execute if score #value Pets.Calc matches 43..47 run attribute @s movement_speed base set 0.15
execute if score #value Pets.Calc matches 43..47 run attribute @s attack_speed base set 5.321
execute if score #value Pets.Calc matches 48..52 run attribute @s movement_speed base set 0.156
execute if score #value Pets.Calc matches 48..52 run attribute @s attack_speed base set 5.474
execute if score #value Pets.Calc matches 53..57 run attribute @s movement_speed base set 0.162
execute if score #value Pets.Calc matches 53..57 run attribute @s attack_speed base set 5.626
execute if score #value Pets.Calc matches 58..62 run attribute @s movement_speed base set 0.168
execute if score #value Pets.Calc matches 58..62 run attribute @s attack_speed base set 5.779
execute if score #value Pets.Calc matches 63..67 run attribute @s movement_speed base set 0.174
execute if score #value Pets.Calc matches 63..67 run attribute @s attack_speed base set 5.932
execute if score #value Pets.Calc matches 68..72 run attribute @s movement_speed base set 0.18
execute if score #value Pets.Calc matches 68..72 run attribute @s attack_speed base set 6.084
execute if score #value Pets.Calc matches 73..77 run attribute @s movement_speed base set 0.186
execute if score #value Pets.Calc matches 73..77 run attribute @s attack_speed base set 6.237
execute if score #value Pets.Calc matches 78..82 run attribute @s movement_speed base set 0.192
execute if score #value Pets.Calc matches 78..82 run attribute @s attack_speed base set 6.389
execute if score #value Pets.Calc matches 83..87 run attribute @s movement_speed base set 0.198
execute if score #value Pets.Calc matches 83..87 run attribute @s attack_speed base set 6.542
execute if score #value Pets.Calc matches 88..92 run attribute @s movement_speed base set 0.206
execute if score #value Pets.Calc matches 88..92 run attribute @s attack_speed base set 6.695
execute if score #value Pets.Calc matches 93..97 run attribute @s movement_speed base set 0.214
execute if score #value Pets.Calc matches 93..97 run attribute @s attack_speed base set 6.847
execute if score #value Pets.Calc matches 98..100 run attribute @s movement_speed base set 0.22
execute if score #value Pets.Calc matches 98..100 run attribute @s attack_speed base set 7.0

tag @s add Pets.Regal_Tiger
