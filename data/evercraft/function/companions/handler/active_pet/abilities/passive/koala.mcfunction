# Koala Pet Passive Abilities
# - Tree Hugger: Fall damage multiplier + sneaking speed dual scaling
# - Drowsy: Slowness immunity

data modify storage evercraft:companions math.string set string entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"level"}].value
scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int

# Drowsy - Slowness immunity
effect clear @s slowness

# Tree Hugger - Fall damage multiplier (0.95 to 0.0)
execute if score #value Pets.Calc matches 1..7 run attribute @s fall_damage_multiplier base set 0.95
execute if score #value Pets.Calc matches 8..12 run attribute @s fall_damage_multiplier base set 0.9
execute if score #value Pets.Calc matches 13..17 run attribute @s fall_damage_multiplier base set 0.85
execute if score #value Pets.Calc matches 18..22 run attribute @s fall_damage_multiplier base set 0.8
execute if score #value Pets.Calc matches 23..27 run attribute @s fall_damage_multiplier base set 0.75
execute if score #value Pets.Calc matches 28..32 run attribute @s fall_damage_multiplier base set 0.7
execute if score #value Pets.Calc matches 33..37 run attribute @s fall_damage_multiplier base set 0.65
execute if score #value Pets.Calc matches 38..42 run attribute @s fall_damage_multiplier base set 0.6
execute if score #value Pets.Calc matches 43..47 run attribute @s fall_damage_multiplier base set 0.55
execute if score #value Pets.Calc matches 48..52 run attribute @s fall_damage_multiplier base set 0.5
execute if score #value Pets.Calc matches 53..57 run attribute @s fall_damage_multiplier base set 0.45
execute if score #value Pets.Calc matches 58..62 run attribute @s fall_damage_multiplier base set 0.4
execute if score #value Pets.Calc matches 63..67 run attribute @s fall_damage_multiplier base set 0.35
execute if score #value Pets.Calc matches 68..72 run attribute @s fall_damage_multiplier base set 0.3
execute if score #value Pets.Calc matches 73..77 run attribute @s fall_damage_multiplier base set 0.25
execute if score #value Pets.Calc matches 78..82 run attribute @s fall_damage_multiplier base set 0.2
execute if score #value Pets.Calc matches 83..87 run attribute @s fall_damage_multiplier base set 0.15
execute if score #value Pets.Calc matches 88..92 run attribute @s fall_damage_multiplier base set 0.1
execute if score #value Pets.Calc matches 93..97 run attribute @s fall_damage_multiplier base set 0.05
execute if score #value Pets.Calc matches 98..100 run attribute @s fall_damage_multiplier base set 0.0

# Tree Hugger - Sneaking speed (0.335 to 0.7)
execute if score #value Pets.Calc matches 1..7 run return run attribute @s sneaking_speed base set 0.335
execute if score #value Pets.Calc matches 8..12 run return run attribute @s sneaking_speed base set 0.354
execute if score #value Pets.Calc matches 13..17 run return run attribute @s sneaking_speed base set 0.373
execute if score #value Pets.Calc matches 18..22 run return run attribute @s sneaking_speed base set 0.392
execute if score #value Pets.Calc matches 23..27 run return run attribute @s sneaking_speed base set 0.411
execute if score #value Pets.Calc matches 28..32 run return run attribute @s sneaking_speed base set 0.43
execute if score #value Pets.Calc matches 33..37 run return run attribute @s sneaking_speed base set 0.449
execute if score #value Pets.Calc matches 38..42 run return run attribute @s sneaking_speed base set 0.468
execute if score #value Pets.Calc matches 43..47 run return run attribute @s sneaking_speed base set 0.487
execute if score #value Pets.Calc matches 48..52 run return run attribute @s sneaking_speed base set 0.506
execute if score #value Pets.Calc matches 53..57 run return run attribute @s sneaking_speed base set 0.525
execute if score #value Pets.Calc matches 58..62 run return run attribute @s sneaking_speed base set 0.544
execute if score #value Pets.Calc matches 63..67 run return run attribute @s sneaking_speed base set 0.563
execute if score #value Pets.Calc matches 68..72 run return run attribute @s sneaking_speed base set 0.582
execute if score #value Pets.Calc matches 73..77 run return run attribute @s sneaking_speed base set 0.601
execute if score #value Pets.Calc matches 78..82 run return run attribute @s sneaking_speed base set 0.62
execute if score #value Pets.Calc matches 83..87 run return run attribute @s sneaking_speed base set 0.64
execute if score #value Pets.Calc matches 88..92 run return run attribute @s sneaking_speed base set 0.66
execute if score #value Pets.Calc matches 93..97 run return run attribute @s sneaking_speed base set 0.68
execute if score #value Pets.Calc matches 98..100 run return run attribute @s sneaking_speed base set 0.7
