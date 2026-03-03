# Duck Pet Passive Abilities
# - Waddle: Water movement efficiency scaling
# - Rain Immunity: Tag trigger for rain slowdown immunity

data modify storage evercraft:companions math.string set string entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"level"}].value
scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int

tag @s add Pets.Duck

# Waddle - Water movement efficiency (0.03 to 0.6)
execute if score #value Pets.Calc matches 1..7 run return run attribute @s water_movement_efficiency base set 0.03
execute if score #value Pets.Calc matches 8..12 run return run attribute @s water_movement_efficiency base set 0.06
execute if score #value Pets.Calc matches 13..17 run return run attribute @s water_movement_efficiency base set 0.09
execute if score #value Pets.Calc matches 18..22 run return run attribute @s water_movement_efficiency base set 0.12
execute if score #value Pets.Calc matches 23..27 run return run attribute @s water_movement_efficiency base set 0.15
execute if score #value Pets.Calc matches 28..32 run return run attribute @s water_movement_efficiency base set 0.18
execute if score #value Pets.Calc matches 33..37 run return run attribute @s water_movement_efficiency base set 0.21
execute if score #value Pets.Calc matches 38..42 run return run attribute @s water_movement_efficiency base set 0.24
execute if score #value Pets.Calc matches 43..47 run return run attribute @s water_movement_efficiency base set 0.27
execute if score #value Pets.Calc matches 48..52 run return run attribute @s water_movement_efficiency base set 0.3
execute if score #value Pets.Calc matches 53..57 run return run attribute @s water_movement_efficiency base set 0.33
execute if score #value Pets.Calc matches 58..62 run return run attribute @s water_movement_efficiency base set 0.36
execute if score #value Pets.Calc matches 63..67 run return run attribute @s water_movement_efficiency base set 0.39
execute if score #value Pets.Calc matches 68..72 run return run attribute @s water_movement_efficiency base set 0.42
execute if score #value Pets.Calc matches 73..77 run return run attribute @s water_movement_efficiency base set 0.46
execute if score #value Pets.Calc matches 78..82 run return run attribute @s water_movement_efficiency base set 0.5
execute if score #value Pets.Calc matches 83..87 run return run attribute @s water_movement_efficiency base set 0.53
execute if score #value Pets.Calc matches 88..92 run return run attribute @s water_movement_efficiency base set 0.56
execute if score #value Pets.Calc matches 93..97 run return run attribute @s water_movement_efficiency base set 0.58
execute if score #value Pets.Calc matches 98..100 run return run attribute @s water_movement_efficiency base set 0.6
