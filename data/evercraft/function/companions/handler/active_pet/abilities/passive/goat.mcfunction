# Goat Pet Passive Abilities
# - Mountain Stance: Knockback resistance scaling
# - Ram: Bonus knockback on charge (tag trigger)

data modify storage evercraft:companions math.string set string entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"level"}].value
scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int

# Mountain Stance: Knockback resistance scaling (0.05 → 0.6)
execute if score #value Pets.Calc matches 1..7 run attribute @s knockback_resistance base set 0.05
execute if score #value Pets.Calc matches 8..12 run attribute @s knockback_resistance base set 0.079
execute if score #value Pets.Calc matches 13..17 run attribute @s knockback_resistance base set 0.108
execute if score #value Pets.Calc matches 18..22 run attribute @s knockback_resistance base set 0.137
execute if score #value Pets.Calc matches 23..27 run attribute @s knockback_resistance base set 0.166
execute if score #value Pets.Calc matches 28..32 run attribute @s knockback_resistance base set 0.195
execute if score #value Pets.Calc matches 33..37 run attribute @s knockback_resistance base set 0.224
execute if score #value Pets.Calc matches 38..42 run attribute @s knockback_resistance base set 0.253
execute if score #value Pets.Calc matches 43..47 run attribute @s knockback_resistance base set 0.282
execute if score #value Pets.Calc matches 48..52 run attribute @s knockback_resistance base set 0.311
execute if score #value Pets.Calc matches 53..57 run attribute @s knockback_resistance base set 0.34
execute if score #value Pets.Calc matches 58..62 run attribute @s knockback_resistance base set 0.369
execute if score #value Pets.Calc matches 63..67 run attribute @s knockback_resistance base set 0.397
execute if score #value Pets.Calc matches 68..72 run attribute @s knockback_resistance base set 0.426
execute if score #value Pets.Calc matches 73..77 run attribute @s knockback_resistance base set 0.455
execute if score #value Pets.Calc matches 78..82 run attribute @s knockback_resistance base set 0.484
execute if score #value Pets.Calc matches 83..87 run attribute @s knockback_resistance base set 0.513
execute if score #value Pets.Calc matches 88..92 run attribute @s knockback_resistance base set 0.542
execute if score #value Pets.Calc matches 93..97 run attribute @s knockback_resistance base set 0.571
execute if score #value Pets.Calc matches 98..100 run attribute @s knockback_resistance base set 0.6

tag @s add Pets.Goat
