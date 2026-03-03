# Copper Golem Pet Passive Abilities
# - Oxidation Resistance: Armor scaling
# - Lucky Buttons: Luck scaling
# - Lightning Rod: Absorb lightning damage (tag trigger)

data modify storage evercraft:companions math.string set string entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"level"}].value
scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int

tag @s add Pets.Copper_Golem

# Oxidation Resistance: Armor scaling (1.5 → 7.0)
execute if score #value Pets.Calc matches 1..7 run attribute @s armor base set 1.5
execute if score #value Pets.Calc matches 8..12 run attribute @s armor base set 1.789
execute if score #value Pets.Calc matches 13..17 run attribute @s armor base set 2.079
execute if score #value Pets.Calc matches 18..22 run attribute @s armor base set 2.368
execute if score #value Pets.Calc matches 23..27 run attribute @s armor base set 2.658
execute if score #value Pets.Calc matches 28..32 run attribute @s armor base set 2.947
execute if score #value Pets.Calc matches 33..37 run attribute @s armor base set 3.237
execute if score #value Pets.Calc matches 38..42 run attribute @s armor base set 3.526
execute if score #value Pets.Calc matches 43..47 run attribute @s armor base set 3.816
execute if score #value Pets.Calc matches 48..52 run attribute @s armor base set 4.105
execute if score #value Pets.Calc matches 53..57 run attribute @s armor base set 4.395
execute if score #value Pets.Calc matches 58..62 run attribute @s armor base set 4.684
execute if score #value Pets.Calc matches 63..67 run attribute @s armor base set 4.974
execute if score #value Pets.Calc matches 68..72 run attribute @s armor base set 5.263
execute if score #value Pets.Calc matches 73..77 run attribute @s armor base set 5.553
execute if score #value Pets.Calc matches 78..82 run attribute @s armor base set 5.842
execute if score #value Pets.Calc matches 83..87 run attribute @s armor base set 6.132
execute if score #value Pets.Calc matches 88..92 run attribute @s armor base set 6.421
execute if score #value Pets.Calc matches 93..97 run attribute @s armor base set 6.711
execute if score #value Pets.Calc matches 98..100 run attribute @s armor base set 7.0

# Lucky Buttons: Luck scaling (0.5 → 3.0)
execute if score #value Pets.Calc matches 1..7 run attribute @s luck base set 0.5
execute if score #value Pets.Calc matches 8..12 run attribute @s luck base set 0.632
execute if score #value Pets.Calc matches 13..17 run attribute @s luck base set 0.763
execute if score #value Pets.Calc matches 18..22 run attribute @s luck base set 0.895
execute if score #value Pets.Calc matches 23..27 run attribute @s luck base set 1.026
execute if score #value Pets.Calc matches 28..32 run attribute @s luck base set 1.158
execute if score #value Pets.Calc matches 33..37 run attribute @s luck base set 1.289
execute if score #value Pets.Calc matches 38..42 run attribute @s luck base set 1.421
execute if score #value Pets.Calc matches 43..47 run attribute @s luck base set 1.553
execute if score #value Pets.Calc matches 48..52 run attribute @s luck base set 1.684
execute if score #value Pets.Calc matches 53..57 run attribute @s luck base set 1.816
execute if score #value Pets.Calc matches 58..62 run attribute @s luck base set 1.947
execute if score #value Pets.Calc matches 63..67 run attribute @s luck base set 2.079
execute if score #value Pets.Calc matches 68..72 run attribute @s luck base set 2.211
execute if score #value Pets.Calc matches 73..77 run attribute @s luck base set 2.342
execute if score #value Pets.Calc matches 78..82 run attribute @s luck base set 2.474
execute if score #value Pets.Calc matches 83..87 run attribute @s luck base set 2.605
execute if score #value Pets.Calc matches 88..92 run attribute @s luck base set 2.737
execute if score #value Pets.Calc matches 93..97 run attribute @s luck base set 2.868
execute if score #value Pets.Calc matches 98..100 run attribute @s luck base set 3.0

