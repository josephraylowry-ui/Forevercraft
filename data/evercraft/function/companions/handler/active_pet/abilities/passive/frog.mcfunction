# Frog Pet Passive Abilities
# - Leap: Jump strength scaling
# - Sticky Landing: Safe fall distance increased

data modify storage evercraft:companions math.string set string entity @e[type=item_display, tag=Pet, predicate=evercraft:companions/check_id, limit=1] item.components."minecraft:profile".properties[{name:"level"}].value
scoreboard players set #value Pets.Calc 0
function evercraft:companions/handler/math/string_to_int

tag @s add Pets.Frog

attribute @s safe_fall_distance base set 10

# Jump strength scaling based on level
execute if score #value Pets.Calc matches 1..7 run attribute @s jump_strength base set 0.43
execute if score #value Pets.Calc matches 8..12 run attribute @s jump_strength base set 0.449
execute if score #value Pets.Calc matches 13..17 run attribute @s jump_strength base set 0.469
execute if score #value Pets.Calc matches 18..22 run attribute @s jump_strength base set 0.488
execute if score #value Pets.Calc matches 23..27 run attribute @s jump_strength base set 0.508
execute if score #value Pets.Calc matches 28..32 run attribute @s jump_strength base set 0.527
execute if score #value Pets.Calc matches 33..37 run attribute @s jump_strength base set 0.547
execute if score #value Pets.Calc matches 38..42 run attribute @s jump_strength base set 0.566
execute if score #value Pets.Calc matches 43..47 run attribute @s jump_strength base set 0.586
execute if score #value Pets.Calc matches 48..52 run attribute @s jump_strength base set 0.605
execute if score #value Pets.Calc matches 53..57 run attribute @s jump_strength base set 0.624
execute if score #value Pets.Calc matches 58..62 run attribute @s jump_strength base set 0.644
execute if score #value Pets.Calc matches 63..67 run attribute @s jump_strength base set 0.663
execute if score #value Pets.Calc matches 68..72 run attribute @s jump_strength base set 0.683
execute if score #value Pets.Calc matches 73..77 run attribute @s jump_strength base set 0.702
execute if score #value Pets.Calc matches 78..82 run attribute @s jump_strength base set 0.722
execute if score #value Pets.Calc matches 83..87 run attribute @s jump_strength base set 0.741
execute if score #value Pets.Calc matches 88..92 run attribute @s jump_strength base set 0.761
execute if score #value Pets.Calc matches 93..97 run attribute @s jump_strength base set 0.78
execute if score #value Pets.Calc matches 98..100 run attribute @s jump_strength base set 0.8
