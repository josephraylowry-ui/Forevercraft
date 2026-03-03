# Snowman Pet Passive Abilities
# - Frosty Constitution: Max health + knockback resistance dual scaling
# - Snowball Barrage: Snowballs launched at hostiles periodically (tag trigger)

data modify storage evercraft:companions math.string set string entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"level"}].value
scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int

execute if score #value Pets.Calc matches 1..7 run attribute @s max_health base set 21.0
execute if score #value Pets.Calc matches 1..7 run attribute @s knockback_resistance base set 0.05
execute if score #value Pets.Calc matches 8..12 run attribute @s max_health base set 21.737
execute if score #value Pets.Calc matches 8..12 run attribute @s knockback_resistance base set 0.076
execute if score #value Pets.Calc matches 13..17 run attribute @s max_health base set 22.474
execute if score #value Pets.Calc matches 13..17 run attribute @s knockback_resistance base set 0.103
execute if score #value Pets.Calc matches 18..22 run attribute @s max_health base set 23.211
execute if score #value Pets.Calc matches 18..22 run attribute @s knockback_resistance base set 0.129
execute if score #value Pets.Calc matches 23..27 run attribute @s max_health base set 23.947
execute if score #value Pets.Calc matches 23..27 run attribute @s knockback_resistance base set 0.155
execute if score #value Pets.Calc matches 28..32 run attribute @s max_health base set 24.684
execute if score #value Pets.Calc matches 28..32 run attribute @s knockback_resistance base set 0.182
execute if score #value Pets.Calc matches 33..37 run attribute @s max_health base set 25.421
execute if score #value Pets.Calc matches 33..37 run attribute @s knockback_resistance base set 0.208
execute if score #value Pets.Calc matches 38..42 run attribute @s max_health base set 26.158
execute if score #value Pets.Calc matches 38..42 run attribute @s knockback_resistance base set 0.234
execute if score #value Pets.Calc matches 43..47 run attribute @s max_health base set 26.895
execute if score #value Pets.Calc matches 43..47 run attribute @s knockback_resistance base set 0.261
execute if score #value Pets.Calc matches 48..52 run attribute @s max_health base set 27.632
execute if score #value Pets.Calc matches 48..52 run attribute @s knockback_resistance base set 0.287
execute if score #value Pets.Calc matches 53..57 run attribute @s max_health base set 28.368
execute if score #value Pets.Calc matches 53..57 run attribute @s knockback_resistance base set 0.313
execute if score #value Pets.Calc matches 58..62 run attribute @s max_health base set 29.105
execute if score #value Pets.Calc matches 58..62 run attribute @s knockback_resistance base set 0.339
execute if score #value Pets.Calc matches 63..67 run attribute @s max_health base set 29.842
execute if score #value Pets.Calc matches 63..67 run attribute @s knockback_resistance base set 0.366
execute if score #value Pets.Calc matches 68..72 run attribute @s max_health base set 30.579
execute if score #value Pets.Calc matches 68..72 run attribute @s knockback_resistance base set 0.392
execute if score #value Pets.Calc matches 73..77 run attribute @s max_health base set 31.316
execute if score #value Pets.Calc matches 73..77 run attribute @s knockback_resistance base set 0.418
execute if score #value Pets.Calc matches 78..82 run attribute @s max_health base set 32.053
execute if score #value Pets.Calc matches 78..82 run attribute @s knockback_resistance base set 0.424
execute if score #value Pets.Calc matches 83..87 run attribute @s max_health base set 32.789
execute if score #value Pets.Calc matches 83..87 run attribute @s knockback_resistance base set 0.45
execute if score #value Pets.Calc matches 88..92 run attribute @s max_health base set 33.526
execute if score #value Pets.Calc matches 88..92 run attribute @s knockback_resistance base set 0.466
execute if score #value Pets.Calc matches 93..97 run attribute @s max_health base set 34.263
execute if score #value Pets.Calc matches 93..97 run attribute @s knockback_resistance base set 0.482
execute if score #value Pets.Calc matches 98..100 run attribute @s max_health base set 35.0
execute if score #value Pets.Calc matches 98..100 run attribute @s knockback_resistance base set 0.5

tag @s add Pets.Snowman
