# Cindershell Pet Passive Abilities
# - Volcanic Plating: Explosion knockback resistance
# - Nether Harvest: XP bonus on Nether kills (tag trigger)

data modify storage evercraft:companions math.string set string entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"level"}].value

scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int

tag @s add Pets.Ghast

execute if score #value Pets.Calc matches 1..7 run return run attribute @s explosion_knockback_resistance base set 0.05
execute if score #value Pets.Calc matches 8..12 run return run attribute @s explosion_knockback_resistance base set 0.1
execute if score #value Pets.Calc matches 13..17 run return run attribute @s explosion_knockback_resistance base set 0.15
execute if score #value Pets.Calc matches 18..22 run return run attribute @s explosion_knockback_resistance base set 0.2
execute if score #value Pets.Calc matches 23..27 run return run attribute @s explosion_knockback_resistance base set 0.25
execute if score #value Pets.Calc matches 28..32 run return run attribute @s explosion_knockback_resistance base set 0.3
execute if score #value Pets.Calc matches 33..37 run return run attribute @s explosion_knockback_resistance base set 0.35
execute if score #value Pets.Calc matches 38..42 run return run attribute @s explosion_knockback_resistance base set 0.4
execute if score #value Pets.Calc matches 43..47 run return run attribute @s explosion_knockback_resistance base set 0.45
execute if score #value Pets.Calc matches 48..52 run return run attribute @s explosion_knockback_resistance base set 0.5
execute if score #value Pets.Calc matches 53..57 run return run attribute @s explosion_knockback_resistance base set 0.55
execute if score #value Pets.Calc matches 58..62 run return run attribute @s explosion_knockback_resistance base set 0.6
execute if score #value Pets.Calc matches 63..67 run return run attribute @s explosion_knockback_resistance base set 0.65
execute if score #value Pets.Calc matches 68..72 run return run attribute @s explosion_knockback_resistance base set 0.7
execute if score #value Pets.Calc matches 73..77 run return run attribute @s explosion_knockback_resistance base set 0.75
execute if score #value Pets.Calc matches 78..82 run return run attribute @s explosion_knockback_resistance base set 0.8
execute if score #value Pets.Calc matches 83..87 run return run attribute @s explosion_knockback_resistance base set 0.85
execute if score #value Pets.Calc matches 88..92 run return run attribute @s explosion_knockback_resistance base set 0.9
execute if score #value Pets.Calc matches 93..97 run return run attribute @s explosion_knockback_resistance base set 0.95
execute if score #value Pets.Calc matches 98..100 run return run attribute @s explosion_knockback_resistance base set 1.0