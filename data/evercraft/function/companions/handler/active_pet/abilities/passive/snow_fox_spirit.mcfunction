# Snow Fox Spirit Pet Passive Abilities
# - Arctic Grace: Movement speed boost, Frost Walker-like immunity
# - Frost Veil: Tag for counter-attack slowness on attackers
# - Spirit's Blessing: Luck bonus + Regeneration in cold biomes

data modify storage evercraft:companions math.string set string entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"level"}].value
scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int

tag @s add Pets.Snow_Fox_Spirit

# Powder Snow immunity (freeze resistance via tag)
tag @s add Pets.FreezeImmune

# Spirit's Blessing - Luck bonus (scales 1-5) in cold biomes
# Cold biomes: frozen_ocean, deep_frozen_ocean, frozen_river, snowy_plains, ice_spikes, snowy_taiga, snowy_beach, grove, snowy_slopes, frozen_peaks, jagged_peaks
execute if predicate evercraft:companions/cold_biome if score #value Pets.Calc matches 1..20 run attribute @s luck base set 1
execute if predicate evercraft:companions/cold_biome if score #value Pets.Calc matches 21..40 run attribute @s luck base set 2
execute if predicate evercraft:companions/cold_biome if score #value Pets.Calc matches 41..60 run attribute @s luck base set 3
execute if predicate evercraft:companions/cold_biome if score #value Pets.Calc matches 61..80 run attribute @s luck base set 4
execute if predicate evercraft:companions/cold_biome if score #value Pets.Calc matches 81..100 run attribute @s luck base set 5
execute unless predicate evercraft:companions/cold_biome run attribute @s luck base set 0

# Spirit's Blessing - Regeneration in cold biomes (scales I-III)
execute if predicate evercraft:companions/cold_biome if score #value Pets.Calc matches 1..32 run effect give @s regeneration 5 0 true
execute if predicate evercraft:companions/cold_biome if score #value Pets.Calc matches 33..66 run effect give @s regeneration 5 1 true
execute if predicate evercraft:companions/cold_biome if score #value Pets.Calc matches 67..100 run effect give @s regeneration 5 2 true

# Arctic Grace - Movement speed scaling (0.105 to 0.18)
execute if score #value Pets.Calc matches 1..7 run return run attribute @s movement_speed base set 0.105
execute if score #value Pets.Calc matches 8..12 run return run attribute @s movement_speed base set 0.11
execute if score #value Pets.Calc matches 13..17 run return run attribute @s movement_speed base set 0.115
execute if score #value Pets.Calc matches 18..22 run return run attribute @s movement_speed base set 0.12
execute if score #value Pets.Calc matches 23..27 run return run attribute @s movement_speed base set 0.125
execute if score #value Pets.Calc matches 28..32 run return run attribute @s movement_speed base set 0.13
execute if score #value Pets.Calc matches 33..37 run return run attribute @s movement_speed base set 0.135
execute if score #value Pets.Calc matches 38..42 run return run attribute @s movement_speed base set 0.14
execute if score #value Pets.Calc matches 43..47 run return run attribute @s movement_speed base set 0.145
execute if score #value Pets.Calc matches 48..52 run return run attribute @s movement_speed base set 0.15
execute if score #value Pets.Calc matches 53..57 run return run attribute @s movement_speed base set 0.155
execute if score #value Pets.Calc matches 58..62 run return run attribute @s movement_speed base set 0.16
execute if score #value Pets.Calc matches 63..67 run return run attribute @s movement_speed base set 0.165
execute if score #value Pets.Calc matches 68..72 run return run attribute @s movement_speed base set 0.17
execute if score #value Pets.Calc matches 73..77 run return run attribute @s movement_speed base set 0.173
execute if score #value Pets.Calc matches 78..82 run return run attribute @s movement_speed base set 0.175
execute if score #value Pets.Calc matches 83..87 run return run attribute @s movement_speed base set 0.177
execute if score #value Pets.Calc matches 88..92 run return run attribute @s movement_speed base set 0.178
execute if score #value Pets.Calc matches 93..97 run return run attribute @s movement_speed base set 0.179
execute if score #value Pets.Calc matches 98..100 run return run attribute @s movement_speed base set 0.18
