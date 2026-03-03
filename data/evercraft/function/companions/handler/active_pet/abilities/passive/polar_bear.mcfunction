# Polar Bear Pet Passive Abilities
# - Arctic Bulk: Max health + armor scaling
# - Frost Ward: Freezing damage immunity

data modify storage evercraft:companions math.string set string entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"level"}].value
scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int

# Frost Ward: Freezing damage immunity (powder snow bypass via tag check in tick)
tag @s add Pets.FreezeImmune

# Arctic Bulk: Max health scaling (21 → 32)
execute if score #value Pets.Calc matches 1..7 run attribute @s max_health base set 21.0
execute if score #value Pets.Calc matches 8..12 run attribute @s max_health base set 21.579
execute if score #value Pets.Calc matches 13..17 run attribute @s max_health base set 22.158
execute if score #value Pets.Calc matches 18..22 run attribute @s max_health base set 22.737
execute if score #value Pets.Calc matches 23..27 run attribute @s max_health base set 23.316
execute if score #value Pets.Calc matches 28..32 run attribute @s max_health base set 23.895
execute if score #value Pets.Calc matches 33..37 run attribute @s max_health base set 24.474
execute if score #value Pets.Calc matches 38..42 run attribute @s max_health base set 25.053
execute if score #value Pets.Calc matches 43..47 run attribute @s max_health base set 25.632
execute if score #value Pets.Calc matches 48..52 run attribute @s max_health base set 26.211
execute if score #value Pets.Calc matches 53..57 run attribute @s max_health base set 26.789
execute if score #value Pets.Calc matches 58..62 run attribute @s max_health base set 27.368
execute if score #value Pets.Calc matches 63..67 run attribute @s max_health base set 27.947
execute if score #value Pets.Calc matches 68..72 run attribute @s max_health base set 28.526
execute if score #value Pets.Calc matches 73..77 run attribute @s max_health base set 29.105
execute if score #value Pets.Calc matches 78..82 run attribute @s max_health base set 29.684
execute if score #value Pets.Calc matches 83..87 run attribute @s max_health base set 30.263
execute if score #value Pets.Calc matches 88..92 run attribute @s max_health base set 30.842
execute if score #value Pets.Calc matches 93..97 run attribute @s max_health base set 31.421
execute if score #value Pets.Calc matches 98..100 run attribute @s max_health base set 32.0

# Arctic Bulk: Armor scaling (0.5 → 3.0)
execute if score #value Pets.Calc matches 1..7 run attribute @s armor base set 0.5
execute if score #value Pets.Calc matches 8..12 run attribute @s armor base set 0.632
execute if score #value Pets.Calc matches 13..17 run attribute @s armor base set 0.763
execute if score #value Pets.Calc matches 18..22 run attribute @s armor base set 0.895
execute if score #value Pets.Calc matches 23..27 run attribute @s armor base set 1.026
execute if score #value Pets.Calc matches 28..32 run attribute @s armor base set 1.158
execute if score #value Pets.Calc matches 33..37 run attribute @s armor base set 1.289
execute if score #value Pets.Calc matches 38..42 run attribute @s armor base set 1.421
execute if score #value Pets.Calc matches 43..47 run attribute @s armor base set 1.553
execute if score #value Pets.Calc matches 48..52 run attribute @s armor base set 1.684
execute if score #value Pets.Calc matches 53..57 run attribute @s armor base set 1.816
execute if score #value Pets.Calc matches 58..62 run attribute @s armor base set 1.947
execute if score #value Pets.Calc matches 63..67 run attribute @s armor base set 2.079
execute if score #value Pets.Calc matches 68..72 run attribute @s armor base set 2.211
execute if score #value Pets.Calc matches 73..77 run attribute @s armor base set 2.342
execute if score #value Pets.Calc matches 78..82 run attribute @s armor base set 2.474
execute if score #value Pets.Calc matches 83..87 run attribute @s armor base set 2.605
execute if score #value Pets.Calc matches 88..92 run attribute @s armor base set 2.737
execute if score #value Pets.Calc matches 93..97 run attribute @s armor base set 2.868
execute if score #value Pets.Calc matches 98..100 run attribute @s armor base set 3.0

tag @s add Pets.Polar_Bear
