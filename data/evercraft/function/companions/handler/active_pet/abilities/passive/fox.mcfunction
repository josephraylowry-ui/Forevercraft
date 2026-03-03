# Fox Pet Passive Abilities
# - Swift Paws: Movement speed scaling
# - Berry Lover: Sweet berries heal double (tag trigger)

data modify storage evercraft:companions math.string set string entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"level"}].value
scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int

tag @s add Pets.Fox

# Movement speed scaling based on level
execute if score #value Pets.Calc matches 1..7 run attribute @s movement_speed base set 0.102
execute if score #value Pets.Calc matches 8..12 run attribute @s movement_speed base set 0.106
execute if score #value Pets.Calc matches 13..17 run attribute @s movement_speed base set 0.109
execute if score #value Pets.Calc matches 18..22 run attribute @s movement_speed base set 0.113
execute if score #value Pets.Calc matches 23..27 run attribute @s movement_speed base set 0.117
execute if score #value Pets.Calc matches 28..32 run attribute @s movement_speed base set 0.121
execute if score #value Pets.Calc matches 33..37 run attribute @s movement_speed base set 0.124
execute if score #value Pets.Calc matches 38..42 run attribute @s movement_speed base set 0.128
execute if score #value Pets.Calc matches 43..47 run attribute @s movement_speed base set 0.132
execute if score #value Pets.Calc matches 48..52 run attribute @s movement_speed base set 0.136
execute if score #value Pets.Calc matches 53..57 run attribute @s movement_speed base set 0.139
execute if score #value Pets.Calc matches 58..62 run attribute @s movement_speed base set 0.143
execute if score #value Pets.Calc matches 63..67 run attribute @s movement_speed base set 0.147
execute if score #value Pets.Calc matches 68..72 run attribute @s movement_speed base set 0.15
execute if score #value Pets.Calc matches 73..77 run attribute @s movement_speed base set 0.154
execute if score #value Pets.Calc matches 78..82 run attribute @s movement_speed base set 0.158
execute if score #value Pets.Calc matches 83..87 run attribute @s movement_speed base set 0.161
execute if score #value Pets.Calc matches 88..92 run attribute @s movement_speed base set 0.165
execute if score #value Pets.Calc matches 93..97 run attribute @s movement_speed base set 0.168
execute if score #value Pets.Calc matches 98..100 run attribute @s movement_speed base set 0.17
