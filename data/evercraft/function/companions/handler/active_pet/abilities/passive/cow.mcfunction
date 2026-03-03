# Cow Pet Passive Abilities
# - Hardy: Max health scaling
# - Well Fed: Saturation boost (tag trigger)

data modify storage evercraft:companions math.string set string entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"level"}].value
scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int

tag @s add Pets.Cow

# Max health scaling based on level
execute if score #value Pets.Calc matches 1..7 run attribute @s max_health base set 20.5
execute if score #value Pets.Calc matches 8..12 run attribute @s max_health base set 20.895
execute if score #value Pets.Calc matches 13..17 run attribute @s max_health base set 21.289
execute if score #value Pets.Calc matches 18..22 run attribute @s max_health base set 21.684
execute if score #value Pets.Calc matches 23..27 run attribute @s max_health base set 22.079
execute if score #value Pets.Calc matches 28..32 run attribute @s max_health base set 22.474
execute if score #value Pets.Calc matches 33..37 run attribute @s max_health base set 22.868
execute if score #value Pets.Calc matches 38..42 run attribute @s max_health base set 23.263
execute if score #value Pets.Calc matches 43..47 run attribute @s max_health base set 23.658
execute if score #value Pets.Calc matches 48..52 run attribute @s max_health base set 24.053
execute if score #value Pets.Calc matches 53..57 run attribute @s max_health base set 24.447
execute if score #value Pets.Calc matches 58..62 run attribute @s max_health base set 24.842
execute if score #value Pets.Calc matches 63..67 run attribute @s max_health base set 25.237
execute if score #value Pets.Calc matches 68..72 run attribute @s max_health base set 25.632
execute if score #value Pets.Calc matches 73..77 run attribute @s max_health base set 26.026
execute if score #value Pets.Calc matches 78..82 run attribute @s max_health base set 26.421
execute if score #value Pets.Calc matches 83..87 run attribute @s max_health base set 26.816
execute if score #value Pets.Calc matches 88..92 run attribute @s max_health base set 27.211
execute if score #value Pets.Calc matches 93..97 run attribute @s max_health base set 27.605
execute if score #value Pets.Calc matches 98..100 run attribute @s max_health base set 28.0
