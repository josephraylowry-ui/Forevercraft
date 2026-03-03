# Frostweaver Pet Passive Abilities
# - Frozen Path: Movement speed scaling
# - Winter's Domain: Speed boost in cold biomes (biome trigger)

data modify storage evercraft:companions math.string set string entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"level"}].value
scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int

tag @s add Pets.Penguin

# Movement speed scaling based on level (0.102 -> 0.18)
execute if score #value Pets.Calc matches 1..7 run attribute @s movement_speed base set 0.102
execute if score #value Pets.Calc matches 8..12 run attribute @s movement_speed base set 0.1061
execute if score #value Pets.Calc matches 13..17 run attribute @s movement_speed base set 0.1102
execute if score #value Pets.Calc matches 18..22 run attribute @s movement_speed base set 0.1143
execute if score #value Pets.Calc matches 23..27 run attribute @s movement_speed base set 0.1184
execute if score #value Pets.Calc matches 28..32 run attribute @s movement_speed base set 0.1225
execute if score #value Pets.Calc matches 33..37 run attribute @s movement_speed base set 0.1266
execute if score #value Pets.Calc matches 38..42 run attribute @s movement_speed base set 0.1307
execute if score #value Pets.Calc matches 43..47 run attribute @s movement_speed base set 0.1348
execute if score #value Pets.Calc matches 48..52 run attribute @s movement_speed base set 0.1389
execute if score #value Pets.Calc matches 53..57 run attribute @s movement_speed base set 0.143
execute if score #value Pets.Calc matches 58..62 run attribute @s movement_speed base set 0.1471
execute if score #value Pets.Calc matches 63..67 run attribute @s movement_speed base set 0.1512
execute if score #value Pets.Calc matches 68..72 run attribute @s movement_speed base set 0.1553
execute if score #value Pets.Calc matches 73..77 run attribute @s movement_speed base set 0.1594
execute if score #value Pets.Calc matches 78..82 run attribute @s movement_speed base set 0.1635
execute if score #value Pets.Calc matches 83..87 run attribute @s movement_speed base set 0.1676
execute if score #value Pets.Calc matches 88..92 run attribute @s movement_speed base set 0.1717
execute if score #value Pets.Calc matches 93..97 run attribute @s movement_speed base set 0.1758
execute if score #value Pets.Calc matches 98..100 run attribute @s movement_speed base set 0.18

# Ice Walker - Speed boost in cold biomes (handled by trigger)
execute if biome ~ ~ ~ #evercraft:companions/cold run return run function evercraft:companions/handler/active_pet/abilities/trigger/penguin_enter
