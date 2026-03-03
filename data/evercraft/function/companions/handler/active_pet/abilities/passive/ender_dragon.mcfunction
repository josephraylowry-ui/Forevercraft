# Ender Dragon Pet Passive Abilities
# - Dragon's Might: Attack damage + max health scaling
# - Void Wings: Slow falling + reduced gravity

data modify storage evercraft:companions math.string set string entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"level"}].value
scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int

tag @s add Pets.Ender_Dragon

# Void Wings: Slow falling (permanent)
effect give @s slow_falling infinite 0 true

# Dragon's Might: Attack damage scaling (2.5 → 8.0)
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

# Dragon's Might: Max health scaling (24 → 45)
execute if score #value Pets.Calc matches 1..7 run attribute @s max_health base set 24.0
execute if score #value Pets.Calc matches 8..12 run attribute @s max_health base set 25.105
execute if score #value Pets.Calc matches 13..17 run attribute @s max_health base set 26.211
execute if score #value Pets.Calc matches 18..22 run attribute @s max_health base set 27.316
execute if score #value Pets.Calc matches 23..27 run attribute @s max_health base set 28.421
execute if score #value Pets.Calc matches 28..32 run attribute @s max_health base set 29.526
execute if score #value Pets.Calc matches 33..37 run attribute @s max_health base set 30.632
execute if score #value Pets.Calc matches 38..42 run attribute @s max_health base set 31.737
execute if score #value Pets.Calc matches 43..47 run attribute @s max_health base set 32.842
execute if score #value Pets.Calc matches 48..52 run attribute @s max_health base set 33.947
execute if score #value Pets.Calc matches 53..57 run attribute @s max_health base set 35.053
execute if score #value Pets.Calc matches 58..62 run attribute @s max_health base set 36.158
execute if score #value Pets.Calc matches 63..67 run attribute @s max_health base set 37.263
execute if score #value Pets.Calc matches 68..72 run attribute @s max_health base set 38.368
execute if score #value Pets.Calc matches 73..77 run attribute @s max_health base set 39.474
execute if score #value Pets.Calc matches 78..82 run attribute @s max_health base set 40.579
execute if score #value Pets.Calc matches 83..87 run attribute @s max_health base set 41.684
execute if score #value Pets.Calc matches 88..92 run attribute @s max_health base set 42.789
execute if score #value Pets.Calc matches 93..97 run attribute @s max_health base set 43.895
execute if score #value Pets.Calc matches 98..100 run attribute @s max_health base set 45.0

# Void Wings: Reduced gravity scaling (0.07 → 0.04)
execute if score #value Pets.Calc matches 1..7 run attribute @s gravity base set 0.07
execute if score #value Pets.Calc matches 8..12 run attribute @s gravity base set 0.0684
execute if score #value Pets.Calc matches 13..17 run attribute @s gravity base set 0.0668
execute if score #value Pets.Calc matches 18..22 run attribute @s gravity base set 0.0653
execute if score #value Pets.Calc matches 23..27 run attribute @s gravity base set 0.0637
execute if score #value Pets.Calc matches 28..32 run attribute @s gravity base set 0.0621
execute if score #value Pets.Calc matches 33..37 run attribute @s gravity base set 0.0605
execute if score #value Pets.Calc matches 38..42 run attribute @s gravity base set 0.0589
execute if score #value Pets.Calc matches 43..47 run attribute @s gravity base set 0.0574
execute if score #value Pets.Calc matches 48..52 run attribute @s gravity base set 0.0558
execute if score #value Pets.Calc matches 53..57 run attribute @s gravity base set 0.0542
execute if score #value Pets.Calc matches 58..62 run attribute @s gravity base set 0.0526
execute if score #value Pets.Calc matches 63..67 run attribute @s gravity base set 0.0511
execute if score #value Pets.Calc matches 68..72 run attribute @s gravity base set 0.0495
execute if score #value Pets.Calc matches 73..77 run attribute @s gravity base set 0.0479
execute if score #value Pets.Calc matches 78..82 run attribute @s gravity base set 0.0463
execute if score #value Pets.Calc matches 83..87 run attribute @s gravity base set 0.0447
execute if score #value Pets.Calc matches 88..92 run attribute @s gravity base set 0.0432
execute if score #value Pets.Calc matches 93..97 run attribute @s gravity base set 0.0416
execute if score #value Pets.Calc matches 98..100 run attribute @s gravity base set 0.04

