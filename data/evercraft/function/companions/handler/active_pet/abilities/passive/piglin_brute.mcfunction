# Piglin Brute Pet Passive Abilities
# - Bastion's Wrath: Attack damage scaling
# - Gold Miner: Gold ore drops double (tag trigger)

data modify storage evercraft:companions math.string set string entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"level"}].value
scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int

execute if score #value Pets.Calc matches 1..7 run attribute @s attack_damage base set 2.5
execute if score #value Pets.Calc matches 8..12 run attribute @s attack_damage base set 2.789
execute if score #value Pets.Calc matches 13..17 run attribute @s attack_damage base set 3.079
execute if score #value Pets.Calc matches 18..22 run attribute @s attack_damage base set 3.368
execute if score #value Pets.Calc matches 23..27 run attribute @s attack_damage base set 3.658
execute if score #value Pets.Calc matches 28..32 run attribute @s attack_damage base set 3.947
execute if score #value Pets.Calc matches 33..37 run attribute @s attack_damage base set 4.237
execute if score #value Pets.Calc matches 38..42 run attribute @s attack_damage base set 4.526
execute if score #value Pets.Calc matches 43..47 run attribute @s attack_damage base set 4.816
execute if score #value Pets.Calc matches 48..52 run attribute @s attack_damage base set 5.105
execute if score #value Pets.Calc matches 53..57 run attribute @s attack_damage base set 5.395
execute if score #value Pets.Calc matches 58..62 run attribute @s attack_damage base set 5.684
execute if score #value Pets.Calc matches 63..67 run attribute @s attack_damage base set 5.974
execute if score #value Pets.Calc matches 68..72 run attribute @s attack_damage base set 6.263
execute if score #value Pets.Calc matches 73..77 run attribute @s attack_damage base set 6.553
execute if score #value Pets.Calc matches 78..82 run attribute @s attack_damage base set 6.842
execute if score #value Pets.Calc matches 83..87 run attribute @s attack_damage base set 7.132
execute if score #value Pets.Calc matches 88..92 run attribute @s attack_damage base set 7.421
execute if score #value Pets.Calc matches 93..97 run attribute @s attack_damage base set 7.711
execute if score #value Pets.Calc matches 98..100 run attribute @s attack_damage base set 8.0

tag @s add Pets.Piglin_Brute
