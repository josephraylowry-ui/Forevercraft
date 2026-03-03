# Arctic Fox Pet Passive Abilities
# - Snowdrift: Sneaking speed scaling
# - Frost Step: Speed boost in cold biomes (handled via predicate)

data modify storage evercraft:companions math.string set string entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"level"}].value
scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int

# Frost Step - Speed in cold biomes
execute if predicate evercraft:companions/cold_biome run effect give @s speed 5 0 true

# Snowdrift - Sneaking speed (0.335 to 0.8)
execute if score #value Pets.Calc matches 1..7 run return run attribute @s sneaking_speed base set 0.335
execute if score #value Pets.Calc matches 8..12 run return run attribute @s sneaking_speed base set 0.359
execute if score #value Pets.Calc matches 13..17 run return run attribute @s sneaking_speed base set 0.384
execute if score #value Pets.Calc matches 18..22 run return run attribute @s sneaking_speed base set 0.408
execute if score #value Pets.Calc matches 23..27 run return run attribute @s sneaking_speed base set 0.432
execute if score #value Pets.Calc matches 28..32 run return run attribute @s sneaking_speed base set 0.457
execute if score #value Pets.Calc matches 33..37 run return run attribute @s sneaking_speed base set 0.481
execute if score #value Pets.Calc matches 38..42 run return run attribute @s sneaking_speed base set 0.505
execute if score #value Pets.Calc matches 43..47 run return run attribute @s sneaking_speed base set 0.53
execute if score #value Pets.Calc matches 48..52 run return run attribute @s sneaking_speed base set 0.554
execute if score #value Pets.Calc matches 53..57 run return run attribute @s sneaking_speed base set 0.578
execute if score #value Pets.Calc matches 58..62 run return run attribute @s sneaking_speed base set 0.603
execute if score #value Pets.Calc matches 63..67 run return run attribute @s sneaking_speed base set 0.627
execute if score #value Pets.Calc matches 68..72 run return run attribute @s sneaking_speed base set 0.651
execute if score #value Pets.Calc matches 73..77 run return run attribute @s sneaking_speed base set 0.676
execute if score #value Pets.Calc matches 78..82 run return run attribute @s sneaking_speed base set 0.7
execute if score #value Pets.Calc matches 83..87 run return run attribute @s sneaking_speed base set 0.724
execute if score #value Pets.Calc matches 88..92 run return run attribute @s sneaking_speed base set 0.749
execute if score #value Pets.Calc matches 93..97 run return run attribute @s sneaking_speed base set 0.773
execute if score #value Pets.Calc matches 98..100 run return run attribute @s sneaking_speed base set 0.8
