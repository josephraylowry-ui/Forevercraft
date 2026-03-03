# Zombified Piglin Pet Passive Abilities
# - Undead Fury: Attack damage + attack speed dual scaling
# - Nether Presence: Nether mob aggro range reduced (tag trigger)

data modify storage evercraft:companions math.string set string entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"level"}].value
scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int

execute if score #value Pets.Calc matches 1..7 run attribute @s attack_damage base set 2.0
execute if score #value Pets.Calc matches 8..12 run attribute @s attack_damage base set 2.263
execute if score #value Pets.Calc matches 13..17 run attribute @s attack_damage base set 2.526
execute if score #value Pets.Calc matches 18..22 run attribute @s attack_damage base set 2.79
execute if score #value Pets.Calc matches 23..27 run attribute @s attack_damage base set 3.053
execute if score #value Pets.Calc matches 28..32 run attribute @s attack_damage base set 3.316
execute if score #value Pets.Calc matches 33..37 run attribute @s attack_damage base set 3.579
execute if score #value Pets.Calc matches 38..42 run attribute @s attack_damage base set 3.842
execute if score #value Pets.Calc matches 43..47 run attribute @s attack_damage base set 4.105
execute if score #value Pets.Calc matches 48..52 run attribute @s attack_damage base set 4.368
execute if score #value Pets.Calc matches 53..57 run attribute @s attack_damage base set 4.632
execute if score #value Pets.Calc matches 58..62 run attribute @s attack_damage base set 4.895
execute if score #value Pets.Calc matches 63..67 run attribute @s attack_damage base set 5.158
execute if score #value Pets.Calc matches 68..72 run attribute @s attack_damage base set 5.421
execute if score #value Pets.Calc matches 73..77 run attribute @s attack_damage base set 5.684
execute if score #value Pets.Calc matches 78..82 run attribute @s attack_damage base set 5.947
execute if score #value Pets.Calc matches 83..87 run attribute @s attack_damage base set 6.211
execute if score #value Pets.Calc matches 88..92 run attribute @s attack_damage base set 6.474
execute if score #value Pets.Calc matches 93..97 run attribute @s attack_damage base set 6.737
execute if score #value Pets.Calc matches 98..100 run attribute @s attack_damage base set 7.0

execute if score #value Pets.Calc matches 1..7 run attribute @s attack_speed base set 4.1
execute if score #value Pets.Calc matches 8..12 run attribute @s attack_speed base set 4.147
execute if score #value Pets.Calc matches 13..17 run attribute @s attack_speed base set 4.195
execute if score #value Pets.Calc matches 18..22 run attribute @s attack_speed base set 4.242
execute if score #value Pets.Calc matches 23..27 run attribute @s attack_speed base set 4.289
execute if score #value Pets.Calc matches 28..32 run attribute @s attack_speed base set 4.337
execute if score #value Pets.Calc matches 33..37 run attribute @s attack_speed base set 4.384
execute if score #value Pets.Calc matches 38..42 run attribute @s attack_speed base set 4.432
execute if score #value Pets.Calc matches 43..47 run attribute @s attack_speed base set 4.479
execute if score #value Pets.Calc matches 48..52 run attribute @s attack_speed base set 4.526
execute if score #value Pets.Calc matches 53..57 run attribute @s attack_speed base set 4.574
execute if score #value Pets.Calc matches 58..62 run attribute @s attack_speed base set 4.621
execute if score #value Pets.Calc matches 63..67 run attribute @s attack_speed base set 4.668
execute if score #value Pets.Calc matches 68..72 run attribute @s attack_speed base set 4.716
execute if score #value Pets.Calc matches 73..77 run attribute @s attack_speed base set 4.763
execute if score #value Pets.Calc matches 78..82 run attribute @s attack_speed base set 4.811
execute if score #value Pets.Calc matches 83..87 run attribute @s attack_speed base set 4.858
execute if score #value Pets.Calc matches 88..92 run attribute @s attack_speed base set 4.905
execute if score #value Pets.Calc matches 93..97 run attribute @s attack_speed base set 4.953
execute if score #value Pets.Calc matches 98..100 run attribute @s attack_speed base set 5.0

tag @s add Pets.Zombified_Piglin
