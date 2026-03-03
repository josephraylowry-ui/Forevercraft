# Mossy Zombie Pet Passive Abilities
# - Overgrown Vitality: Max health scaling
# - Undead Kinship: Zombies and Drowned ignore you (tag trigger)

data modify storage evercraft:companions math.string set string entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"level"}].value
scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int

tag @s add Pets.Mossy_Zombie

# Overgrown Vitality: Max health scaling
execute if score #value Pets.Calc matches 1..7 run return run attribute @s max_health base set 20.5
execute if score #value Pets.Calc matches 8..12 run return run attribute @s max_health base set 21.1
execute if score #value Pets.Calc matches 13..17 run return run attribute @s max_health base set 21.7
execute if score #value Pets.Calc matches 18..22 run return run attribute @s max_health base set 22.3
execute if score #value Pets.Calc matches 23..27 run return run attribute @s max_health base set 22.9
execute if score #value Pets.Calc matches 28..32 run return run attribute @s max_health base set 23.5
execute if score #value Pets.Calc matches 33..37 run return run attribute @s max_health base set 24.1
execute if score #value Pets.Calc matches 38..42 run return run attribute @s max_health base set 24.7
execute if score #value Pets.Calc matches 43..47 run return run attribute @s max_health base set 25.3
execute if score #value Pets.Calc matches 48..52 run return run attribute @s max_health base set 25.9
execute if score #value Pets.Calc matches 53..57 run return run attribute @s max_health base set 26.5
execute if score #value Pets.Calc matches 58..62 run return run attribute @s max_health base set 27.1
execute if score #value Pets.Calc matches 63..67 run return run attribute @s max_health base set 27.7
execute if score #value Pets.Calc matches 68..72 run return run attribute @s max_health base set 28.3
execute if score #value Pets.Calc matches 73..77 run return run attribute @s max_health base set 28.9
execute if score #value Pets.Calc matches 78..82 run return run attribute @s max_health base set 29.5
execute if score #value Pets.Calc matches 83..87 run return run attribute @s max_health base set 30.0
execute if score #value Pets.Calc matches 88..92 run return run attribute @s max_health base set 30.5
execute if score #value Pets.Calc matches 93..97 run return run attribute @s max_health base set 31.0
execute if score #value Pets.Calc matches 98..100 run return run attribute @s max_health base set 32.0
