# Ravager Pet Passive Abilities
# - Destructive Force: Attack damage + knockback scaling
# - Trampling Charge: Break blocks on charge (tag trigger)

data modify storage evercraft:companions math.string set string entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"level"}].value
scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int

# Destructive Force: Attack damage scaling (2.0 → 6.0)
execute if score #value Pets.Calc matches 1..7 run attribute @s attack_damage base set 2.0
execute if score #value Pets.Calc matches 8..12 run attribute @s attack_damage base set 2.211
execute if score #value Pets.Calc matches 13..17 run attribute @s attack_damage base set 2.421
execute if score #value Pets.Calc matches 18..22 run attribute @s attack_damage base set 2.632
execute if score #value Pets.Calc matches 23..27 run attribute @s attack_damage base set 2.842
execute if score #value Pets.Calc matches 28..32 run attribute @s attack_damage base set 3.053
execute if score #value Pets.Calc matches 33..37 run attribute @s attack_damage base set 3.263
execute if score #value Pets.Calc matches 38..42 run attribute @s attack_damage base set 3.474
execute if score #value Pets.Calc matches 43..47 run attribute @s attack_damage base set 3.684
execute if score #value Pets.Calc matches 48..52 run attribute @s attack_damage base set 3.895
execute if score #value Pets.Calc matches 53..57 run attribute @s attack_damage base set 4.105
execute if score #value Pets.Calc matches 58..62 run attribute @s attack_damage base set 4.316
execute if score #value Pets.Calc matches 63..67 run attribute @s attack_damage base set 4.526
execute if score #value Pets.Calc matches 68..72 run attribute @s attack_damage base set 4.737
execute if score #value Pets.Calc matches 73..77 run attribute @s attack_damage base set 4.947
execute if score #value Pets.Calc matches 78..82 run attribute @s attack_damage base set 5.158
execute if score #value Pets.Calc matches 83..87 run attribute @s attack_damage base set 5.368
execute if score #value Pets.Calc matches 88..92 run attribute @s attack_damage base set 5.579
execute if score #value Pets.Calc matches 93..97 run attribute @s attack_damage base set 5.789
execute if score #value Pets.Calc matches 98..100 run attribute @s attack_damage base set 6.0

# Destructive Force: Attack knockback scaling (0.5 → 2.0)
execute if score #value Pets.Calc matches 1..7 run attribute @s attack_knockback base set 0.5
execute if score #value Pets.Calc matches 8..12 run attribute @s attack_knockback base set 0.579
execute if score #value Pets.Calc matches 13..17 run attribute @s attack_knockback base set 0.658
execute if score #value Pets.Calc matches 18..22 run attribute @s attack_knockback base set 0.737
execute if score #value Pets.Calc matches 23..27 run attribute @s attack_knockback base set 0.816
execute if score #value Pets.Calc matches 28..32 run attribute @s attack_knockback base set 0.895
execute if score #value Pets.Calc matches 33..37 run attribute @s attack_knockback base set 0.974
execute if score #value Pets.Calc matches 38..42 run attribute @s attack_knockback base set 1.053
execute if score #value Pets.Calc matches 43..47 run attribute @s attack_knockback base set 1.132
execute if score #value Pets.Calc matches 48..52 run attribute @s attack_knockback base set 1.211
execute if score #value Pets.Calc matches 53..57 run attribute @s attack_knockback base set 1.289
execute if score #value Pets.Calc matches 58..62 run attribute @s attack_knockback base set 1.368
execute if score #value Pets.Calc matches 63..67 run attribute @s attack_knockback base set 1.447
execute if score #value Pets.Calc matches 68..72 run attribute @s attack_knockback base set 1.526
execute if score #value Pets.Calc matches 73..77 run attribute @s attack_knockback base set 1.605
execute if score #value Pets.Calc matches 78..82 run attribute @s attack_knockback base set 1.684
execute if score #value Pets.Calc matches 83..87 run attribute @s attack_knockback base set 1.763
execute if score #value Pets.Calc matches 88..92 run attribute @s attack_knockback base set 1.842
execute if score #value Pets.Calc matches 93..97 run attribute @s attack_knockback base set 1.921
execute if score #value Pets.Calc matches 98..100 run attribute @s attack_knockback base set 2.0

tag @s add Pets.Ravager
