# Bulwark Pet Passive Abilities
# - Iron Stance: Knockback resistance scaling

data modify storage evercraft:companions math.string set string entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"level"}].value

scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int

execute if score #value Pets.Calc matches 1..7 run return run attribute @s knockback_resistance base set 5
execute if score #value Pets.Calc matches 8..12 run return run attribute @s knockback_resistance base set 10
execute if score #value Pets.Calc matches 13..17 run return run attribute @s knockback_resistance base set 15
execute if score #value Pets.Calc matches 18..22 run return run attribute @s knockback_resistance base set 20
execute if score #value Pets.Calc matches 23..27 run return run attribute @s knockback_resistance base set 25
execute if score #value Pets.Calc matches 28..32 run return run attribute @s knockback_resistance base set 30
execute if score #value Pets.Calc matches 33..37 run return run attribute @s knockback_resistance base set 35
execute if score #value Pets.Calc matches 38..42 run return run attribute @s knockback_resistance base set 40
execute if score #value Pets.Calc matches 43..47 run return run attribute @s knockback_resistance base set 45
execute if score #value Pets.Calc matches 48..52 run return run attribute @s knockback_resistance base set 50
execute if score #value Pets.Calc matches 53..57 run return run attribute @s knockback_resistance base set 55
execute if score #value Pets.Calc matches 58..62 run return run attribute @s knockback_resistance base set 60
execute if score #value Pets.Calc matches 63..67 run return run attribute @s knockback_resistance base set 65
execute if score #value Pets.Calc matches 68..72 run return run attribute @s knockback_resistance base set 70
execute if score #value Pets.Calc matches 73..77 run return run attribute @s knockback_resistance base set 75
execute if score #value Pets.Calc matches 78..82 run return run attribute @s knockback_resistance base set 80
execute if score #value Pets.Calc matches 83..87 run return run attribute @s knockback_resistance base set 85
execute if score #value Pets.Calc matches 88..92 run return run attribute @s knockback_resistance base set 90
execute if score #value Pets.Calc matches 93..97 run return run attribute @s knockback_resistance base set 95
execute if score #value Pets.Calc matches 98..100 run return run attribute @s knockback_resistance base set 100