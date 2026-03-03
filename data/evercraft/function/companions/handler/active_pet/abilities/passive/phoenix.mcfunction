# Emberheart Pet Passive Abilities
# - Heart of Embers: Fire resistance (permanent)
# - Searing Fury: Attack damage scaling

data modify storage evercraft:companions math.string set string entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"level"}].value
scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int

tag @s add Pets.Phoenix
effect give @s fire_resistance infinite 1 true

# Attack damage scaling based on level
execute if score #value Pets.Calc matches 1..7 run attribute @s attack_damage base set 1.5
execute if score #value Pets.Calc matches 8..12 run attribute @s attack_damage base set 1.632
execute if score #value Pets.Calc matches 13..17 run attribute @s attack_damage base set 1.763
execute if score #value Pets.Calc matches 18..22 run attribute @s attack_damage base set 1.895
execute if score #value Pets.Calc matches 23..27 run attribute @s attack_damage base set 2.026
execute if score #value Pets.Calc matches 28..32 run attribute @s attack_damage base set 2.158
execute if score #value Pets.Calc matches 33..37 run attribute @s attack_damage base set 2.289
execute if score #value Pets.Calc matches 38..42 run attribute @s attack_damage base set 2.421
execute if score #value Pets.Calc matches 43..47 run attribute @s attack_damage base set 2.553
execute if score #value Pets.Calc matches 48..52 run attribute @s attack_damage base set 2.684
execute if score #value Pets.Calc matches 53..57 run attribute @s attack_damage base set 2.816
execute if score #value Pets.Calc matches 58..62 run attribute @s attack_damage base set 2.947
execute if score #value Pets.Calc matches 63..67 run attribute @s attack_damage base set 3.079
execute if score #value Pets.Calc matches 68..72 run attribute @s attack_damage base set 3.211
execute if score #value Pets.Calc matches 73..77 run attribute @s attack_damage base set 3.342
execute if score #value Pets.Calc matches 78..82 run attribute @s attack_damage base set 3.474
execute if score #value Pets.Calc matches 83..87 run attribute @s attack_damage base set 3.605
execute if score #value Pets.Calc matches 88..92 run attribute @s attack_damage base set 3.737
execute if score #value Pets.Calc matches 93..97 run attribute @s attack_damage base set 3.868
execute if score #value Pets.Calc matches 98..100 run attribute @s attack_damage base set 4.0
