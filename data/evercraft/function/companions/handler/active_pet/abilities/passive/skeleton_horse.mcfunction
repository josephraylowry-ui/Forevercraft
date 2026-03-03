# Skeleton Horse Pet Passive Abilities
# - Bone Gallop: Movement speed scaling
# - Undead Mount: Water breathing while mounted + undead ignore at night (tag trigger)

data modify storage evercraft:companions math.string set string entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"level"}].value
scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int

# Undead Mount - Water breathing
effect give @s water_breathing infinite 0 true

# Bone Gallop - Movement speed (0.102 to 0.22)
execute if score #value Pets.Calc matches 1..7 run return run attribute @s movement_speed base set 0.102
execute if score #value Pets.Calc matches 8..12 run return run attribute @s movement_speed base set 0.108
execute if score #value Pets.Calc matches 13..17 run return run attribute @s movement_speed base set 0.114
execute if score #value Pets.Calc matches 18..22 run return run attribute @s movement_speed base set 0.12
execute if score #value Pets.Calc matches 23..27 run return run attribute @s movement_speed base set 0.126
execute if score #value Pets.Calc matches 28..32 run return run attribute @s movement_speed base set 0.132
execute if score #value Pets.Calc matches 33..37 run return run attribute @s movement_speed base set 0.138
execute if score #value Pets.Calc matches 38..42 run return run attribute @s movement_speed base set 0.144
execute if score #value Pets.Calc matches 43..47 run return run attribute @s movement_speed base set 0.15
execute if score #value Pets.Calc matches 48..52 run return run attribute @s movement_speed base set 0.156
execute if score #value Pets.Calc matches 53..57 run return run attribute @s movement_speed base set 0.162
execute if score #value Pets.Calc matches 58..62 run return run attribute @s movement_speed base set 0.168
execute if score #value Pets.Calc matches 63..67 run return run attribute @s movement_speed base set 0.174
execute if score #value Pets.Calc matches 68..72 run return run attribute @s movement_speed base set 0.18
execute if score #value Pets.Calc matches 73..77 run return run attribute @s movement_speed base set 0.186
execute if score #value Pets.Calc matches 78..82 run return run attribute @s movement_speed base set 0.192
execute if score #value Pets.Calc matches 83..87 run return run attribute @s movement_speed base set 0.198
execute if score #value Pets.Calc matches 88..92 run return run attribute @s movement_speed base set 0.206
execute if score #value Pets.Calc matches 93..97 run return run attribute @s movement_speed base set 0.214
execute if score #value Pets.Calc matches 98..100 run return run attribute @s movement_speed base set 0.22
