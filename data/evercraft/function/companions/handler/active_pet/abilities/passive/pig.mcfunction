# Pig Pet Passive Abilities
# - Trot: Movement speed scaling
# - Pig Rider: Pig mounts go faster (tag trigger)

data modify storage evercraft:companions math.string set string entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"level"}].value
scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int

# Trot: Movement speed scaling (0.101 → 0.14)
execute if score #value Pets.Calc matches 1..7 run attribute @s movement_speed base set 0.101
execute if score #value Pets.Calc matches 8..12 run attribute @s movement_speed base set 0.103
execute if score #value Pets.Calc matches 13..17 run attribute @s movement_speed base set 0.105
execute if score #value Pets.Calc matches 18..22 run attribute @s movement_speed base set 0.107
execute if score #value Pets.Calc matches 23..27 run attribute @s movement_speed base set 0.109
execute if score #value Pets.Calc matches 28..32 run attribute @s movement_speed base set 0.111
execute if score #value Pets.Calc matches 33..37 run attribute @s movement_speed base set 0.113
execute if score #value Pets.Calc matches 38..42 run attribute @s movement_speed base set 0.115
execute if score #value Pets.Calc matches 43..47 run attribute @s movement_speed base set 0.117
execute if score #value Pets.Calc matches 48..52 run attribute @s movement_speed base set 0.119
execute if score #value Pets.Calc matches 53..57 run attribute @s movement_speed base set 0.121
execute if score #value Pets.Calc matches 58..62 run attribute @s movement_speed base set 0.123
execute if score #value Pets.Calc matches 63..67 run attribute @s movement_speed base set 0.125
execute if score #value Pets.Calc matches 68..72 run attribute @s movement_speed base set 0.127
execute if score #value Pets.Calc matches 73..77 run attribute @s movement_speed base set 0.129
execute if score #value Pets.Calc matches 78..82 run attribute @s movement_speed base set 0.131
execute if score #value Pets.Calc matches 83..87 run attribute @s movement_speed base set 0.133
execute if score #value Pets.Calc matches 88..92 run attribute @s movement_speed base set 0.135
execute if score #value Pets.Calc matches 93..97 run attribute @s movement_speed base set 0.137
execute if score #value Pets.Calc matches 98..100 run attribute @s movement_speed base set 0.14

tag @s add Pets.Pig
