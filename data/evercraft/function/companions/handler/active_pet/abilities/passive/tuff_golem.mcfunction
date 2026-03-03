# Tuff Golem Pet Passive Abilities
# - Stone Shell: Armor + armor toughness dual scaling
# - Item Magnet: Auto-pickup items in small radius (tag trigger)

data modify storage evercraft:companions math.string set string entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"level"}].value
scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int

execute if score #value Pets.Calc matches 1..7 run attribute @s armor base set 1.0
execute if score #value Pets.Calc matches 8..12 run attribute @s armor base set 1.474
execute if score #value Pets.Calc matches 13..17 run attribute @s armor base set 1.947
execute if score #value Pets.Calc matches 18..22 run attribute @s armor base set 2.421
execute if score #value Pets.Calc matches 23..27 run attribute @s armor base set 2.895
execute if score #value Pets.Calc matches 28..32 run attribute @s armor base set 3.368
execute if score #value Pets.Calc matches 33..37 run attribute @s armor base set 3.842
execute if score #value Pets.Calc matches 38..42 run attribute @s armor base set 4.316
execute if score #value Pets.Calc matches 43..47 run attribute @s armor base set 4.789
execute if score #value Pets.Calc matches 48..52 run attribute @s armor base set 5.263
execute if score #value Pets.Calc matches 53..57 run attribute @s armor base set 5.737
execute if score #value Pets.Calc matches 58..62 run attribute @s armor base set 6.211
execute if score #value Pets.Calc matches 63..67 run attribute @s armor base set 6.684
execute if score #value Pets.Calc matches 68..72 run attribute @s armor base set 7.158
execute if score #value Pets.Calc matches 73..77 run attribute @s armor base set 7.632
execute if score #value Pets.Calc matches 78..82 run attribute @s armor base set 8.105
execute if score #value Pets.Calc matches 83..87 run attribute @s armor base set 8.579
execute if score #value Pets.Calc matches 88..92 run attribute @s armor base set 9.053
execute if score #value Pets.Calc matches 93..97 run attribute @s armor base set 9.526
execute if score #value Pets.Calc matches 98..100 run attribute @s armor base set 10.0

execute if score #value Pets.Calc matches 1..7 run attribute @s armor_toughness base set 0.5
execute if score #value Pets.Calc matches 8..12 run attribute @s armor_toughness base set 0.737
execute if score #value Pets.Calc matches 13..17 run attribute @s armor_toughness base set 0.974
execute if score #value Pets.Calc matches 18..22 run attribute @s armor_toughness base set 1.211
execute if score #value Pets.Calc matches 23..27 run attribute @s armor_toughness base set 1.447
execute if score #value Pets.Calc matches 28..32 run attribute @s armor_toughness base set 1.684
execute if score #value Pets.Calc matches 33..37 run attribute @s armor_toughness base set 1.921
execute if score #value Pets.Calc matches 38..42 run attribute @s armor_toughness base set 2.158
execute if score #value Pets.Calc matches 43..47 run attribute @s armor_toughness base set 2.395
execute if score #value Pets.Calc matches 48..52 run attribute @s armor_toughness base set 2.632
execute if score #value Pets.Calc matches 53..57 run attribute @s armor_toughness base set 2.868
execute if score #value Pets.Calc matches 58..62 run attribute @s armor_toughness base set 3.105
execute if score #value Pets.Calc matches 63..67 run attribute @s armor_toughness base set 3.342
execute if score #value Pets.Calc matches 68..72 run attribute @s armor_toughness base set 3.579
execute if score #value Pets.Calc matches 73..77 run attribute @s armor_toughness base set 3.816
execute if score #value Pets.Calc matches 78..82 run attribute @s armor_toughness base set 4.053
execute if score #value Pets.Calc matches 83..87 run attribute @s armor_toughness base set 4.289
execute if score #value Pets.Calc matches 88..92 run attribute @s armor_toughness base set 4.526
execute if score #value Pets.Calc matches 93..97 run attribute @s armor_toughness base set 4.763
execute if score #value Pets.Calc matches 98..100 run attribute @s armor_toughness base set 5.0

tag @s add Pets.Tuff_Golem
