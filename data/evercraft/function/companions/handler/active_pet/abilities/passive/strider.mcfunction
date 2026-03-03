# Strider Pet Passive Abilities
# - Lava Walker: Movement speed scaling
# - Heat Shield: Permanent fire resistance

data modify storage evercraft:companions math.string set string entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"level"}].value
scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int

# Heat Shield: Permanent fire resistance
effect give @s fire_resistance infinite 0 true

# Lava Walker: Movement speed scaling (0.102 → 0.16)
execute if score #value Pets.Calc matches 1..7 run attribute @s movement_speed base set 0.102
execute if score #value Pets.Calc matches 8..12 run attribute @s movement_speed base set 0.105
execute if score #value Pets.Calc matches 13..17 run attribute @s movement_speed base set 0.108
execute if score #value Pets.Calc matches 18..22 run attribute @s movement_speed base set 0.111
execute if score #value Pets.Calc matches 23..27 run attribute @s movement_speed base set 0.114
execute if score #value Pets.Calc matches 28..32 run attribute @s movement_speed base set 0.117
execute if score #value Pets.Calc matches 33..37 run attribute @s movement_speed base set 0.12
execute if score #value Pets.Calc matches 38..42 run attribute @s movement_speed base set 0.123
execute if score #value Pets.Calc matches 43..47 run attribute @s movement_speed base set 0.126
execute if score #value Pets.Calc matches 48..52 run attribute @s movement_speed base set 0.129
execute if score #value Pets.Calc matches 53..57 run attribute @s movement_speed base set 0.132
execute if score #value Pets.Calc matches 58..62 run attribute @s movement_speed base set 0.135
execute if score #value Pets.Calc matches 63..67 run attribute @s movement_speed base set 0.138
execute if score #value Pets.Calc matches 68..72 run attribute @s movement_speed base set 0.141
execute if score #value Pets.Calc matches 73..77 run attribute @s movement_speed base set 0.144
execute if score #value Pets.Calc matches 78..82 run attribute @s movement_speed base set 0.147
execute if score #value Pets.Calc matches 83..87 run attribute @s movement_speed base set 0.15
execute if score #value Pets.Calc matches 88..92 run attribute @s movement_speed base set 0.153
execute if score #value Pets.Calc matches 93..97 run attribute @s movement_speed base set 0.157
execute if score #value Pets.Calc matches 98..100 run attribute @s movement_speed base set 0.16

tag @s add Pets.Strider
