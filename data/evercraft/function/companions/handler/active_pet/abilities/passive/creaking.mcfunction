# Creaking Pet Passive Abilities
# - Forest Horror: Attack damage scaling
# - Stillness: Invisible while still in dark (tag trigger)

data modify storage evercraft:companions math.string set string entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"level"}].value
scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int

# Forest Horror: Attack damage scaling (1.5 → 5.0)
scoreboard players set #damage_min Pets.Calc 15
scoreboard players set #damage_max Pets.Calc 50
scoreboard players set #level_min Pets.Calc 1
scoreboard players set #level_max Pets.Calc 100
# Scaling via manual range checks below
attribute @s attack_damage base set 1.5

execute if score #value Pets.Calc matches 1..7 run attribute @s attack_damage base set 1.5
execute if score #value Pets.Calc matches 8..12 run attribute @s attack_damage base set 1.684
execute if score #value Pets.Calc matches 13..17 run attribute @s attack_damage base set 1.868
execute if score #value Pets.Calc matches 18..22 run attribute @s attack_damage base set 2.053
execute if score #value Pets.Calc matches 23..27 run attribute @s attack_damage base set 2.237
execute if score #value Pets.Calc matches 28..32 run attribute @s attack_damage base set 2.421
execute if score #value Pets.Calc matches 33..37 run attribute @s attack_damage base set 2.605
execute if score #value Pets.Calc matches 38..42 run attribute @s attack_damage base set 2.79
execute if score #value Pets.Calc matches 43..47 run attribute @s attack_damage base set 2.974
execute if score #value Pets.Calc matches 48..52 run attribute @s attack_damage base set 3.158
execute if score #value Pets.Calc matches 53..57 run attribute @s attack_damage base set 3.342
execute if score #value Pets.Calc matches 58..62 run attribute @s attack_damage base set 3.526
execute if score #value Pets.Calc matches 63..67 run attribute @s attack_damage base set 3.71
execute if score #value Pets.Calc matches 68..72 run attribute @s attack_damage base set 3.895
execute if score #value Pets.Calc matches 73..77 run attribute @s attack_damage base set 4.079
execute if score #value Pets.Calc matches 78..82 run attribute @s attack_damage base set 4.263
execute if score #value Pets.Calc matches 83..87 run attribute @s attack_damage base set 4.447
execute if score #value Pets.Calc matches 88..92 run attribute @s attack_damage base set 4.632
execute if score #value Pets.Calc matches 93..97 run attribute @s attack_damage base set 4.816
execute if score #value Pets.Calc matches 98..100 run attribute @s attack_damage base set 5.0

tag @s add Pets.Creaking
