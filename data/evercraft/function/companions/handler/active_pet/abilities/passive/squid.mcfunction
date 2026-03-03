# Squid Pet Passive Abilities
# - Deep Lungs: Oxygen bonus scaling
# - Ink Cloud: Blinds attackers (tag trigger)

data modify storage evercraft:companions math.string set string entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"level"}].value
scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int

# Deep Lungs: Oxygen bonus scaling (0.5 → 8.0)
execute if score #value Pets.Calc matches 1..7 run attribute @s oxygen_bonus base set 0.5
execute if score #value Pets.Calc matches 8..12 run attribute @s oxygen_bonus base set 0.895
execute if score #value Pets.Calc matches 13..17 run attribute @s oxygen_bonus base set 1.289
execute if score #value Pets.Calc matches 18..22 run attribute @s oxygen_bonus base set 1.684
execute if score #value Pets.Calc matches 23..27 run attribute @s oxygen_bonus base set 2.079
execute if score #value Pets.Calc matches 28..32 run attribute @s oxygen_bonus base set 2.474
execute if score #value Pets.Calc matches 33..37 run attribute @s oxygen_bonus base set 2.868
execute if score #value Pets.Calc matches 38..42 run attribute @s oxygen_bonus base set 3.263
execute if score #value Pets.Calc matches 43..47 run attribute @s oxygen_bonus base set 3.658
execute if score #value Pets.Calc matches 48..52 run attribute @s oxygen_bonus base set 4.053
execute if score #value Pets.Calc matches 53..57 run attribute @s oxygen_bonus base set 4.447
execute if score #value Pets.Calc matches 58..62 run attribute @s oxygen_bonus base set 4.842
execute if score #value Pets.Calc matches 63..67 run attribute @s oxygen_bonus base set 5.237
execute if score #value Pets.Calc matches 68..72 run attribute @s oxygen_bonus base set 5.632
execute if score #value Pets.Calc matches 73..77 run attribute @s oxygen_bonus base set 6.026
execute if score #value Pets.Calc matches 78..82 run attribute @s oxygen_bonus base set 6.421
execute if score #value Pets.Calc matches 83..87 run attribute @s oxygen_bonus base set 6.816
execute if score #value Pets.Calc matches 88..92 run attribute @s oxygen_bonus base set 7.211
execute if score #value Pets.Calc matches 93..97 run attribute @s oxygen_bonus base set 7.605
execute if score #value Pets.Calc matches 98..100 run attribute @s oxygen_bonus base set 8.0

tag @s add Pets.Squid
