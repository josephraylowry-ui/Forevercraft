# Armadillo Pet Passive Abilities
# - Armored Shell: Armor + armor toughness scaling
# - Roll Defense: Knockback resistance

data modify storage evercraft:companions math.string set string entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"level"}].value
scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int

tag @s add Pets.Armadillo

# Armored Shell: Armor scaling (1.0 → 6.0)
execute if score #value Pets.Calc matches 1..7 run attribute @s armor base set 1.0
execute if score #value Pets.Calc matches 8..12 run attribute @s armor base set 1.263
execute if score #value Pets.Calc matches 13..17 run attribute @s armor base set 1.526
execute if score #value Pets.Calc matches 18..22 run attribute @s armor base set 1.789
execute if score #value Pets.Calc matches 23..27 run attribute @s armor base set 2.053
execute if score #value Pets.Calc matches 28..32 run attribute @s armor base set 2.316
execute if score #value Pets.Calc matches 33..37 run attribute @s armor base set 2.579
execute if score #value Pets.Calc matches 38..42 run attribute @s armor base set 2.842
execute if score #value Pets.Calc matches 43..47 run attribute @s armor base set 3.105
execute if score #value Pets.Calc matches 48..52 run attribute @s armor base set 3.368
execute if score #value Pets.Calc matches 53..57 run attribute @s armor base set 3.632
execute if score #value Pets.Calc matches 58..62 run attribute @s armor base set 3.895
execute if score #value Pets.Calc matches 63..67 run attribute @s armor base set 4.158
execute if score #value Pets.Calc matches 68..72 run attribute @s armor base set 4.421
execute if score #value Pets.Calc matches 73..77 run attribute @s armor base set 4.684
execute if score #value Pets.Calc matches 78..82 run attribute @s armor base set 4.947
execute if score #value Pets.Calc matches 83..87 run attribute @s armor base set 5.211
execute if score #value Pets.Calc matches 88..92 run attribute @s armor base set 5.474
execute if score #value Pets.Calc matches 93..97 run attribute @s armor base set 5.737
execute if score #value Pets.Calc matches 98..100 run attribute @s armor base set 6.0

# Roll Defense: Knockback resistance scaling (0.1 → 0.5)
execute if score #value Pets.Calc matches 1..7 run attribute @s knockback_resistance base set 0.1
execute if score #value Pets.Calc matches 8..12 run attribute @s knockback_resistance base set 0.121
execute if score #value Pets.Calc matches 13..17 run attribute @s knockback_resistance base set 0.142
execute if score #value Pets.Calc matches 18..22 run attribute @s knockback_resistance base set 0.163
execute if score #value Pets.Calc matches 23..27 run attribute @s knockback_resistance base set 0.184
execute if score #value Pets.Calc matches 28..32 run attribute @s knockback_resistance base set 0.205
execute if score #value Pets.Calc matches 33..37 run attribute @s knockback_resistance base set 0.226
execute if score #value Pets.Calc matches 38..42 run attribute @s knockback_resistance base set 0.247
execute if score #value Pets.Calc matches 43..47 run attribute @s knockback_resistance base set 0.268
execute if score #value Pets.Calc matches 48..52 run attribute @s knockback_resistance base set 0.289
execute if score #value Pets.Calc matches 53..57 run attribute @s knockback_resistance base set 0.311
execute if score #value Pets.Calc matches 58..62 run attribute @s knockback_resistance base set 0.332
execute if score #value Pets.Calc matches 63..67 run attribute @s knockback_resistance base set 0.353
execute if score #value Pets.Calc matches 68..72 run attribute @s knockback_resistance base set 0.374
execute if score #value Pets.Calc matches 73..77 run attribute @s knockback_resistance base set 0.395
execute if score #value Pets.Calc matches 78..82 run attribute @s knockback_resistance base set 0.416
execute if score #value Pets.Calc matches 83..87 run attribute @s knockback_resistance base set 0.437
execute if score #value Pets.Calc matches 88..92 run attribute @s knockback_resistance base set 0.458
execute if score #value Pets.Calc matches 93..97 run attribute @s knockback_resistance base set 0.479
execute if score #value Pets.Calc matches 98..100 run attribute @s knockback_resistance base set 0.5

