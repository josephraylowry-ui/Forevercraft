# Titan Pet Passive Abilities
# - Giant's Stature: Player scale enlarge

data modify storage evercraft:companions math.string set string entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"level"}].value

scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int

execute if score #value Pets.Calc matches 1..7 run return run attribute @s scale base set 1.025
execute if score #value Pets.Calc matches 8..12 run return run attribute @s scale base set 1.05
execute if score #value Pets.Calc matches 13..17 run return run attribute @s scale base set 1.075
execute if score #value Pets.Calc matches 18..22 run return run attribute @s scale base set 1.1
execute if score #value Pets.Calc matches 23..27 run return run attribute @s scale base set 1.125
execute if score #value Pets.Calc matches 28..32 run return run attribute @s scale base set 1.15
execute if score #value Pets.Calc matches 33..37 run return run attribute @s scale base set 1.175
execute if score #value Pets.Calc matches 38..42 run return run attribute @s scale base set 1.2
execute if score #value Pets.Calc matches 43..47 run return run attribute @s scale base set 1.225
execute if score #value Pets.Calc matches 48..52 run return run attribute @s scale base set 1.25
execute if score #value Pets.Calc matches 53..57 run return run attribute @s scale base set 1.275
execute if score #value Pets.Calc matches 58..62 run return run attribute @s scale base set 1.3
execute if score #value Pets.Calc matches 63..67 run return run attribute @s scale base set 1.325
execute if score #value Pets.Calc matches 68..72 run return run attribute @s scale base set 1.35
execute if score #value Pets.Calc matches 73..77 run return run attribute @s scale base set 1.375
execute if score #value Pets.Calc matches 78..82 run return run attribute @s scale base set 1.4
execute if score #value Pets.Calc matches 83..87 run return run attribute @s scale base set 1.425
execute if score #value Pets.Calc matches 88..92 run return run attribute @s scale base set 1.45
execute if score #value Pets.Calc matches 93..97 run return run attribute @s scale base set 1.475
execute if score #value Pets.Calc matches 98..100 run return run attribute @s scale base set 1.5