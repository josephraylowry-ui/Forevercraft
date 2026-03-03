# Cow of Eden Pet Passive Abilities
# - Eden's Grace: Permanent Regeneration II
# - Sacred Milk: Auto-cleanse negative effects
# - Pastoral Dreams: Luck (dream rate) + max health scaling

data modify storage evercraft:companions math.string set string entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"level"}].value
scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int

tag @s add Pets.Cow_of_Eden

# Eden's Grace - Permanent Regeneration II
effect give @s regeneration infinite 1 true

# Sacred Milk - Cleanse negative effects
effect clear @s poison
effect clear @s wither
effect clear @s hunger
effect clear @s weakness
effect clear @s mining_fatigue
effect clear @s blindness
effect clear @s nausea
effect clear @s levitation
effect clear @s darkness

# Max health scaling (21 -> 35)
execute if score #value Pets.Calc matches 1..7 run attribute @s max_health base set 21
execute if score #value Pets.Calc matches 8..12 run attribute @s max_health base set 21.737
execute if score #value Pets.Calc matches 13..17 run attribute @s max_health base set 22.474
execute if score #value Pets.Calc matches 18..22 run attribute @s max_health base set 23.211
execute if score #value Pets.Calc matches 23..27 run attribute @s max_health base set 23.947
execute if score #value Pets.Calc matches 28..32 run attribute @s max_health base set 24.684
execute if score #value Pets.Calc matches 33..37 run attribute @s max_health base set 25.421
execute if score #value Pets.Calc matches 38..42 run attribute @s max_health base set 26.158
execute if score #value Pets.Calc matches 43..47 run attribute @s max_health base set 26.895
execute if score #value Pets.Calc matches 48..52 run attribute @s max_health base set 27.632
execute if score #value Pets.Calc matches 53..57 run attribute @s max_health base set 28.368
execute if score #value Pets.Calc matches 58..62 run attribute @s max_health base set 29.105
execute if score #value Pets.Calc matches 63..67 run attribute @s max_health base set 29.842
execute if score #value Pets.Calc matches 68..72 run attribute @s max_health base set 30.579
execute if score #value Pets.Calc matches 73..77 run attribute @s max_health base set 31.316
execute if score #value Pets.Calc matches 78..82 run attribute @s max_health base set 32.053
execute if score #value Pets.Calc matches 83..87 run attribute @s max_health base set 32.789
execute if score #value Pets.Calc matches 88..92 run attribute @s max_health base set 33.526
execute if score #value Pets.Calc matches 93..97 run attribute @s max_health base set 34.263
execute if score #value Pets.Calc matches 98..100 run attribute @s max_health base set 35.0

# Pastoral Dreams - Luck scaling (1.0 -> 5.0)
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
