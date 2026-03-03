# Iron Golem Pet Passive Abilities
# - Iron Plating: Armor + max health scaling
# - Village Guardian: Iron golems fight for you

data modify storage evercraft:companions math.string set string entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"level"}].value
scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int

tag @s add Pets.Iron_Golem

# Armor scaling based on level (without return)
execute if score #value Pets.Calc matches 1..7 run attribute @s armor base set 1.0
execute if score #value Pets.Calc matches 8..12 run attribute @s armor base set 1.368
execute if score #value Pets.Calc matches 13..17 run attribute @s armor base set 1.737
execute if score #value Pets.Calc matches 18..22 run attribute @s armor base set 2.105
execute if score #value Pets.Calc matches 23..27 run attribute @s armor base set 2.474
execute if score #value Pets.Calc matches 28..32 run attribute @s armor base set 2.842
execute if score #value Pets.Calc matches 33..37 run attribute @s armor base set 3.211
execute if score #value Pets.Calc matches 38..42 run attribute @s armor base set 3.579
execute if score #value Pets.Calc matches 43..47 run attribute @s armor base set 3.947
execute if score #value Pets.Calc matches 48..52 run attribute @s armor base set 4.316
execute if score #value Pets.Calc matches 53..57 run attribute @s armor base set 4.684
execute if score #value Pets.Calc matches 58..62 run attribute @s armor base set 5.053
execute if score #value Pets.Calc matches 63..67 run attribute @s armor base set 5.421
execute if score #value Pets.Calc matches 68..72 run attribute @s armor base set 5.789
execute if score #value Pets.Calc matches 73..77 run attribute @s armor base set 6.158
execute if score #value Pets.Calc matches 78..82 run attribute @s armor base set 6.526
execute if score #value Pets.Calc matches 83..87 run attribute @s armor base set 6.895
execute if score #value Pets.Calc matches 88..92 run attribute @s armor base set 7.263
execute if score #value Pets.Calc matches 93..97 run attribute @s armor base set 7.632
execute if score #value Pets.Calc matches 98..100 run attribute @s armor base set 8.0

# Max health scaling based on level (with return)
execute if score #value Pets.Calc matches 1..7 run attribute @s max_health base set 21.0
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
