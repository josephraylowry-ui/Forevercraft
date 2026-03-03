# Red Panda Pet Passive Abilities
# - Bamboo Blessing: Permanent Haste II
# - Nimble Paws: Movement speed + jump strength scaling
# - Playful Spirit: Luck (dream rate) scaling

data modify storage evercraft:companions math.string set string entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"level"}].value
scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int

tag @s add Pets.Red_Panda

# Bamboo Blessing - Permanent Haste II
effect give @s haste infinite 1 true

# Nimble Paws - Movement speed scaling (0.105 -> 0.18)
execute if score #value Pets.Calc matches 1..7 run attribute @s movement_speed base set 0.105
execute if score #value Pets.Calc matches 8..12 run attribute @s movement_speed base set 0.1089
execute if score #value Pets.Calc matches 13..17 run attribute @s movement_speed base set 0.1129
execute if score #value Pets.Calc matches 18..22 run attribute @s movement_speed base set 0.1168
execute if score #value Pets.Calc matches 23..27 run attribute @s movement_speed base set 0.1208
execute if score #value Pets.Calc matches 28..32 run attribute @s movement_speed base set 0.1247
execute if score #value Pets.Calc matches 33..37 run attribute @s movement_speed base set 0.1287
execute if score #value Pets.Calc matches 38..42 run attribute @s movement_speed base set 0.1326
execute if score #value Pets.Calc matches 43..47 run attribute @s movement_speed base set 0.1366
execute if score #value Pets.Calc matches 48..52 run attribute @s movement_speed base set 0.1405
execute if score #value Pets.Calc matches 53..57 run attribute @s movement_speed base set 0.1445
execute if score #value Pets.Calc matches 58..62 run attribute @s movement_speed base set 0.1484
execute if score #value Pets.Calc matches 63..67 run attribute @s movement_speed base set 0.1524
execute if score #value Pets.Calc matches 68..72 run attribute @s movement_speed base set 0.1563
execute if score #value Pets.Calc matches 73..77 run attribute @s movement_speed base set 0.1603
execute if score #value Pets.Calc matches 78..82 run attribute @s movement_speed base set 0.1642
execute if score #value Pets.Calc matches 83..87 run attribute @s movement_speed base set 0.1682
execute if score #value Pets.Calc matches 88..92 run attribute @s movement_speed base set 0.1721
execute if score #value Pets.Calc matches 93..97 run attribute @s movement_speed base set 0.1761
execute if score #value Pets.Calc matches 98..100 run attribute @s movement_speed base set 0.18

# Nimble Paws - Jump strength scaling (0.5 -> 1.0)
execute if score #value Pets.Calc matches 1..7 run attribute @s jump_strength base set 0.5
execute if score #value Pets.Calc matches 8..12 run attribute @s jump_strength base set 0.526
execute if score #value Pets.Calc matches 13..17 run attribute @s jump_strength base set 0.553
execute if score #value Pets.Calc matches 18..22 run attribute @s jump_strength base set 0.579
execute if score #value Pets.Calc matches 23..27 run attribute @s jump_strength base set 0.605
execute if score #value Pets.Calc matches 28..32 run attribute @s jump_strength base set 0.632
execute if score #value Pets.Calc matches 33..37 run attribute @s jump_strength base set 0.658
execute if score #value Pets.Calc matches 38..42 run attribute @s jump_strength base set 0.684
execute if score #value Pets.Calc matches 43..47 run attribute @s jump_strength base set 0.711
execute if score #value Pets.Calc matches 48..52 run attribute @s jump_strength base set 0.737
execute if score #value Pets.Calc matches 53..57 run attribute @s jump_strength base set 0.763
execute if score #value Pets.Calc matches 58..62 run attribute @s jump_strength base set 0.789
execute if score #value Pets.Calc matches 63..67 run attribute @s jump_strength base set 0.816
execute if score #value Pets.Calc matches 68..72 run attribute @s jump_strength base set 0.842
execute if score #value Pets.Calc matches 73..77 run attribute @s jump_strength base set 0.868
execute if score #value Pets.Calc matches 78..82 run attribute @s jump_strength base set 0.895
execute if score #value Pets.Calc matches 83..87 run attribute @s jump_strength base set 0.921
execute if score #value Pets.Calc matches 88..92 run attribute @s jump_strength base set 0.947
execute if score #value Pets.Calc matches 93..97 run attribute @s jump_strength base set 0.974
execute if score #value Pets.Calc matches 98..100 run attribute @s jump_strength base set 1.0

# Playful Spirit - Luck scaling (1.0 -> 5.0)
execute if score #value Pets.Calc matches 1..7 run attribute @s luck base set 1.0
execute if score #value Pets.Calc matches 8..12 run attribute @s luck base set 1.211
execute if score #value Pets.Calc matches 13..17 run attribute @s luck base set 1.421
execute if score #value Pets.Calc matches 18..22 run attribute @s luck base set 1.632
execute if score #value Pets.Calc matches 23..27 run attribute @s luck base set 1.842
execute if score #value Pets.Calc matches 28..32 run attribute @s luck base set 2.053
execute if score #value Pets.Calc matches 33..37 run attribute @s luck base set 2.263
execute if score #value Pets.Calc matches 38..42 run attribute @s luck base set 2.474
execute if score #value Pets.Calc matches 43..47 run attribute @s luck base set 2.684
execute if score #value Pets.Calc matches 48..52 run attribute @s luck base set 2.895
execute if score #value Pets.Calc matches 53..57 run attribute @s luck base set 3.105
execute if score #value Pets.Calc matches 58..62 run attribute @s luck base set 3.316
execute if score #value Pets.Calc matches 63..67 run attribute @s luck base set 3.526
execute if score #value Pets.Calc matches 68..72 run attribute @s luck base set 3.737
execute if score #value Pets.Calc matches 73..77 run attribute @s luck base set 3.947
execute if score #value Pets.Calc matches 78..82 run attribute @s luck base set 4.158
execute if score #value Pets.Calc matches 83..87 run attribute @s luck base set 4.368
execute if score #value Pets.Calc matches 88..92 run attribute @s luck base set 4.579
execute if score #value Pets.Calc matches 93..97 run attribute @s luck base set 4.789
execute if score #value Pets.Calc matches 98..100 run attribute @s luck base set 5.0
