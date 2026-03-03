# Moobloom Pet Passive Abilities
# - Floral Fortune: Luck scaling
# - Nature's Touch: Bone meal effect on nearby crops every 30s (tag trigger)

data modify storage evercraft:companions math.string set string entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"level"}].value
scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int

# Floral Fortune - Luck (0.5 to 4.0)
execute if score #value Pets.Calc matches 1..7 run return run attribute @s luck base set 0.5
execute if score #value Pets.Calc matches 8..12 run return run attribute @s luck base set 0.684
execute if score #value Pets.Calc matches 13..17 run return run attribute @s luck base set 0.868
execute if score #value Pets.Calc matches 18..22 run return run attribute @s luck base set 1.053
execute if score #value Pets.Calc matches 23..27 run return run attribute @s luck base set 1.237
execute if score #value Pets.Calc matches 28..32 run return run attribute @s luck base set 1.421
execute if score #value Pets.Calc matches 33..37 run return run attribute @s luck base set 1.605
execute if score #value Pets.Calc matches 38..42 run return run attribute @s luck base set 1.79
execute if score #value Pets.Calc matches 43..47 run return run attribute @s luck base set 1.974
execute if score #value Pets.Calc matches 48..52 run return run attribute @s luck base set 2.158
execute if score #value Pets.Calc matches 53..57 run return run attribute @s luck base set 2.342
execute if score #value Pets.Calc matches 58..62 run return run attribute @s luck base set 2.526
execute if score #value Pets.Calc matches 63..67 run return run attribute @s luck base set 2.71
execute if score #value Pets.Calc matches 68..72 run return run attribute @s luck base set 2.895
execute if score #value Pets.Calc matches 73..77 run return run attribute @s luck base set 3.079
execute if score #value Pets.Calc matches 78..82 run return run attribute @s luck base set 3.263
execute if score #value Pets.Calc matches 83..87 run return run attribute @s luck base set 3.447
execute if score #value Pets.Calc matches 88..92 run return run attribute @s luck base set 3.632
execute if score #value Pets.Calc matches 93..97 run return run attribute @s luck base set 3.816
execute if score #value Pets.Calc matches 98..100 run return run attribute @s luck base set 4.0
